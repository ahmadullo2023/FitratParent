import 'package:fitrat_parent2/presentation/results/repository/results_repository.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../utils/custom_pagination_widget.dart';
import '../../utils/servise/file_download_service.dart';
import '../../utils/widgets/item_results.dart';
import '../balance/widgets/custom_chip.dart';
import 'model/results_model.dart';

class ResultsScreen extends StatefulWidget {
  const ResultsScreen({super.key});

  @override
  State<ResultsScreen> createState() => _ResultsScreenState();
}

class _ResultsScreenState extends State<ResultsScreen> {
  List<FKNameModel> types = [];
  int selectedTypeIndex = 0;
  String? selectedFkId;
  final PagingController<int, ResultsModel> _pagingController =
      PagingController<int, ResultsModel>(firstPageKey: 1);

  @override
  void initState() {
    getTypes();
    super.initState();
  }

  void getTypes() async {
    types = await resultsRepository.getResultTypes();
    setState(() {});
  }

  void _onChipSelected(int index) {
    setState(() {
      selectedTypeIndex = index;
      if (index == 0) {
        selectedFkId = null;
      } else {
        selectedFkId = types[index - 1].id;
      }
    });

    _pagingController.refresh();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        centerTitle: true,
        title: const Text(
          'Natijalar',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (types.isNotEmpty) ...[
            SizedBox(
              height: 36,
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                scrollDirection: Axis.horizontal,
                children: [
                  CustomChip(
                    label: "Barchasi",
                    isSelected: selectedTypeIndex == 0,
                    onTap: () => _onChipSelected(0),
                  ),
                  const SizedBox(width: 8),
                  // Dynamic chips from types
                  ...types.asMap().entries.map((entry) {
                    int index = entry.key + 1;
                    FKNameModel type = entry.value;
                    return Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: CustomChip(
                        label: type.name ?? "Unknown",
                        isSelected: selectedTypeIndex == index,
                        onTap: () => _onChipSelected(index),
                      ),
                    );
                  }).toList(),
                ],
              ),
            ),
            const SizedBox(height: 8),
          ],
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: CustomPaginationWidget<ResultsModel>(
                spacing: 0,
                isListView: false,
                controller: _pagingController,
                itemBuilder: (item) {
                  return ItemResults(
                    topImageUrl: item.file?.file,
                    studentImageUrl: item.file?.file,
                    studentName: item.fullName ?? "Ann",
                    resultType: item.type ?? "",
                    score: item.point ?? "",
                    isBig: true,
                    onTap: () {
                      item.file?.file != null &&
                              (item.file!.file!.endsWith(".png") ||
                                  item.file!.file!.endsWith(".jpg") ||
                                  item.file!.file!.endsWith(".jpeg"))
                          ? Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => Scaffold(
                                      backgroundColor: Colors.black,
                                      body: Center(
                                          child: InteractiveViewer(
                                              child: Image.network(
                                                  item.file!.file!))))))
                          : FileDownloadService().downloadAndOpenFile(
                              context: context,
                              url: item.file!.file!,
                            );
                    },
                  );
                },
                getItems: (page) async {
                  try {
                    final result = await resultsRepository.getResults(
                        fkId: selectedFkId, page: page);
                    return result;
                  } catch (e) {
                    rethrow;
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }
}
