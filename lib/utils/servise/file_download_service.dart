import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

typedef ProgressCallback = void Function(double progress);

class FileDownloadService {
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<bool> _isFileDownloaded(String fileName) async {
    final path = await _localPath;
    final file = File('$path/$fileName');
    return file.existsSync();
  }

  Future<void> _openFile(String fileName) async {
    try {
      final path = await _localPath;
      final file = File('$path/$fileName');
      final result = await OpenFile.open(file.path);
      if (result.type != ResultType.done) {
        print('Error opening file: ${result.message}');
      }
    } catch (e) {
      print('Error opening file: $e');
      rethrow;
    }
  }

  Future<void> downloadAndOpenFile({
    required String url,
    required BuildContext context,
    ProgressCallback? onProgress,
  }) async {
    String fileName;
    try {
      fileName = Uri.parse(url).pathSegments.last;
      if (fileName.isEmpty) {
        throw Exception('Invalid URL: No file name found');
      }
    } catch (e) {
      print('Error parsing URL: $e');
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: $e')),
        );
      }
      rethrow;
    }

    if (await _isFileDownloaded(fileName)) {
      await _openFile(fileName);
      return;
    }

    double progress = 0.0;
    bool isDownloading = false;

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext dialogContext) {
        return StatefulBuilder(
          builder: (context, setDialogState) {
            return AlertDialog(
              title: const Text('Downloading File'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircularProgressIndicator(
                    value: progress / 100,
                    strokeWidth: 5,
                  ),
                  const SizedBox(height: 16),
                  Text('${progress.toStringAsFixed(1)}%'),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: isDownloading
                      ? null
                      : () {
                          Navigator.of(dialogContext).pop();
                        },
                  child: const Text('Cancel'),
                ),
              ],
            );
          },
        );
      },
    );

    try {
      isDownloading = true;
      final path = await _localPath;
      final file = File('$path/$fileName');

      final request = http.Request('GET', Uri.parse(url));
      final response = await request.send();

      if (response.statusCode == 200) {
        final contentLength = response.contentLength ?? 0;
        int receivedBytes = 0;

        final outputFile = file.openSync(mode: FileMode.write);

        await for (var chunk in response.stream) {
          outputFile.writeFromSync(chunk);
          receivedBytes += chunk.length;

          if (contentLength > 0) {
            progress = (receivedBytes / contentLength) * 100;
            if (onProgress != null) {
              onProgress(progress);
            }
            if (context.mounted) {
              (context as Element).markNeedsBuild();
            }
          }
        }

        outputFile.closeSync();
        if (context.mounted) {
          Navigator.of(context).pop();
        }
        await _openFile(fileName);
      } else {
        throw Exception('Failed to download file: ${response.statusCode}');
      }
    } catch (e) {
      print('Error downloading file: $e');
      if (context.mounted) {
        Navigator.of(context).pop();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: $e')),
        );
      }
      rethrow;
    } finally {
      isDownloading = false;
    }
  }
}
