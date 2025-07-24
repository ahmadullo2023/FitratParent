import 'package:fitrat_parent2/presentation/events/repository/events_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import '../../utils/custom_pagination_widget.dart';
import '../../utils/widgets/item_event.dart';
import '../balance/widgets/custom_chip.dart';
import 'event_detail.dart';
import 'model/events_model.dart';

class EventsScreen extends StatefulWidget {
  const EventsScreen({super.key});

  @override
  State<EventsScreen> createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
  List<EventStatus> types = EventStatus.values;
  int selectedTypeIndex = 0;
  String? selectedStatus;
  final PagingController<int, EventsModel> _pagingController =
      PagingController<int, EventsModel>(firstPageKey: 1);

  void _onChipSelected(int index) {
    setState(() {
      selectedTypeIndex = index;
      if (index == 0) {
        selectedStatus = null;
      } else {
        selectedStatus = types[index - 1].nameAPI;
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
          'Tadbirlar',
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
                ...types.asMap().entries.map((entry) {
                  int index = entry.key + 1;
                  EventStatus type = entry.value;
                  return Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: CustomChip(
                      label: type.nameUI ?? "Unknown",
                      isSelected: selectedTypeIndex == index,
                      onTap: () => _onChipSelected(index),
                    ),
                  );
                }).toList(),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: CustomPaginationWidget<EventsModel>(
                controller: _pagingController,
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                itemBuilder: (item) {
                  return ItemEvents(
                    title: item.comment ?? "",
                    time: item.endDate ?? "",
                    backgroundImage: item.photo?.file,
                    onTab: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EventDetail(event: item)));
                    },
                    isEvent: true,
                  );
                },
                getItems: (page) async {
                  try {
                    final result = await eventsRepository.getEvents(
                      status: selectedStatus,
                      page: page,
                    );
                    return result;
                  } catch (e) {
                    rethrow;
                  }
                },
                emptyBuilder: () => Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/icons/33.svg"),
                          const SizedBox(height: 8),
                          const Text(
                            "To’lovlar mavjud emas",
                            style: TextStyle(
                                color: Color(0xFF1F2A37),
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            "Bu yerda sizning to’lovlaringiz tarixi ko’rinadi",
                            style: TextStyle(color: Color(0xFF6C737F)),
                          ),
                        ],
                      ),
                    )),
          )
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
