import 'dart:io';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

import '../app_assets.dart';
import '../app_colors.dart';

class CustomDownloadButtonWidget extends StatefulWidget {
  final String fileUrl;
  final int index;
  final String name;

  const CustomDownloadButtonWidget({
    super.key,
    required this.fileUrl,
    required this.index,
    required this.name
  });

  @override
  State createState() => _CustomDownloadButtonWidgetState();
}

class _CustomDownloadButtonWidgetState extends State<CustomDownloadButtonWidget> {
  final Dio _dio = Dio();
  double _progress = 0.0;
  bool _isDownloading = false;
  bool _downloadComplete = false;
  late String _filePath;

  String getFileNameFromUrl(String url) {
    String fileName = path.basename(url);

    if (fileName.isEmpty) {
      return 'video ${widget.index + 1}.mp4';
    }

    return fileName;
  }

  Future<void> downloadFile(String url) async {
    try {
      Directory tempDir = await getTemporaryDirectory();
      String fileName = getFileNameFromUrl(url);
      _filePath = '${tempDir.path}/$fileName';
      File file = File(_filePath);

      if (await file.exists()) {
        setState(() {
          _downloadComplete = true;
        });
        return;
      }

      setState(() {
        _isDownloading = true;
        _progress = 0.0;
      });

      await _dio.download(
        url,
        _filePath,
        onReceiveProgress: (received, total) {
          if (total != -1) {
            setState(() {
              _progress = (received / total) * 100;
            });
          }
        },
      );

      setState(() {
        _downloadComplete = true;
        _isDownloading = false;
      });
    } catch (e) {
      setState(() {
        _isDownloading = false;
      });
      print('Error downloading file: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    _checkFileExists();
  }

  Future<void> _checkFileExists() async {
    Directory tempDir = await getTemporaryDirectory();
    String fileName = getFileNameFromUrl(widget.fileUrl);
    _filePath = '${tempDir.path}/$fileName';
    File file = File(_filePath);

    if (await file.exists()) {
      setState(() {
        _downloadComplete = true;
      });
    }
  }

  String _getFileExtension() {
    return getFileNameFromUrl(widget.fileUrl)
        .split(".")
        .last
        .toLowerCase();
  }

  String _getFileIcon() {
    final extension = _getFileExtension();
    final videoExtensions = ['mp4', 'avi', 'mov', 'wmv', 'flv', 'webm', 'mkv', '3gp', 'youtu.be'];

    if (videoExtensions.contains(extension)) {
      return AppIcons.icVideo;
    } else {
      return AppIcons.icDocument;
    }
  }

  String _getProgressText() {
    if (_isDownloading) {
      return '${_progress.toStringAsFixed(0)}% yuklash...';
    }
    return '';
  }

  @override
  Widget build(BuildContext context) {
    final fileIcon = _getFileIcon();

    return GestureDetector(
      onTap: () {
        if (!_downloadComplete && !_isDownloading) {
          downloadFile(widget.fileUrl);
          return;
        }
        if (_downloadComplete) {
          OpenFilex.open(_filePath);
        }
      },
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
          child: Row(
            children: [
              // File Icon Container
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: const Color(0xffF3F4F6),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    fileIcon,
                    width: 24,
                    height: 24,
                  ),
                ),
              ),
              const SizedBox(width: 12),

              // Main Content Column
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // File Name
                    Text(
                      getFileNameFromUrl(widget.name),
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),

                    // Status Text
                    if (_downloadComplete)
                      const Padding(
                        padding: EdgeInsets.only(top: 2),
                        child: Text(
                          'Yuklangan',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF059669), // Green color for completed
                          ),
                        ),
                      ),

                    if (_isDownloading) ...[
                      Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: Text(
                          _getProgressText(),
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF6C737F),
                          ),
                        ),
                      ),
                      const SizedBox(height: 6),
                      LinearProgressIndicator(
                        value: _progress / 100,
                        backgroundColor: const Color(0xffF3F4F6),
                        valueColor: AlwaysStoppedAnimation<Color>(AppColors.emerald500),
                      ),
                    ],

                    if (!_downloadComplete && !_isDownloading)
                      const Padding(
                        padding: EdgeInsets.only(top: 2),
                        child: Text(
                          'Yuklab olish',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF6C737F),
                          ),
                        ),
                      ),
                  ],
                ),
              ),

              // Status Icon
              Icon(
                _downloadComplete
                    ? Icons.check
                    : _isDownloading
                    ? Icons.downloading
                    : Icons.chevron_right,
                size: 24,
                color: _downloadComplete
                    ? AppColors.emerald500
                    : _isDownloading
                    ? AppColors.emerald500
                    : AppColors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

String getFileNameFromUrl(String url) {
  if (url.isEmpty) return '';
  final uri = Uri.parse(url);
  return uri.pathSegments.isNotEmpty ? uri.pathSegments.last : '';
}