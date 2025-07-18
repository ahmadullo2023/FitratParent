import 'package:fitrat_parent2/presentation/balance/widgets/balance_widget.dart';
import 'package:fitrat_parent2/presentation/balance/widgets/custom_chip.dart';
import 'package:fitrat_parent2/presentation/balance/widgets/item_balance.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../balance/bloc/balance_bloc.dart';
import '../main/bloc/main_bloc.dart';
import 'model/balance_model.dart';

class BalanceScreen extends StatefulWidget {
  const BalanceScreen({super.key});

  @override
  State<BalanceScreen> createState() => _BalanceScreenState();
}

class _BalanceScreenState extends State<BalanceScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<String> chipLabels = ["Barchasi", "Kirim", "Chiqim"];

  // @override
  // void initState() {
  //   super.initState();
  //   _tabController = TabController(length: chipLabels.length, vsync: this);
  //   context.read<BalanceBloc>().add(GetBalances());
  //
  //   _tabController.animation?.addListener(() {
  //     final newIndex = _tabController.animation!.value.round();
  //     if (_tabController.index != newIndex && mounted) {
  //       setState(() {});
  //     }
  //   });
  // }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: chipLabels.length, vsync: this);
    context.read<BalanceBloc>().add(GetBalances());

    _tabController.addListener(() {
      if (!mounted) return;
      if (!_tabController.indexIsChanging) {
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, mainState) {
        return Scaffold(
          backgroundColor: Color(0xffF9FAFB),
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.white,
            title: const Text(
              "Balance",
              style: TextStyle(
                color: Color(0xff0D121C),
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
          ),
          body: BlocBuilder<BalanceBloc, BalanceState>(
            builder: (context, state) {
              final allItems = state.balances?.results ?? [];

              List<BalanceModel> getFiltered(int index) {
                if (index == 1) {
                  return allItems.where((b) => b.action == "INCOME").toList();
                } else if (index == 2) {
                  return allItems.where((b) => b.action == "EXPENSE").toList();
                } else {
                  return allItems;
                }
              }

              return Container(
                width: double.infinity,
                color: const Color(0xffF3F4F6),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: BalanceWidget(
                        balance: mainState.studentModel?.balance ?? "0",
                        onTap: () {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: List.generate(chipLabels.length, (index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: /*CustomChip(
                              label: chipLabels[index],
                              isSelected: _tabController.index == index,
                              onTap: () => _tabController.animateTo(index),
                            ),*/
                                CustomChip(
                              label: chipLabels[index],
                              isSelected: index == _tabController.index,
                              onTap: () => _tabController.animateTo(index),
                              withWhiteBackground: true,
                            ),
                          );
                        }),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Expanded(
                      child: state.status == BalanceStatus.loading
                          ? const Center(child: CupertinoActivityIndicator())
                          : state.status == BalanceStatus.failure
                              ? const Center(child: Text("Xatolik yuz berdi"))
                              : TabBarView(
                                  controller: _tabController,
                                  children:
                                      List.generate(chipLabels.length, (index) {
                                    final filteredItems = getFiltered(index);
                                    if (filteredItems.isEmpty) {
                                      return Center(
                                        child: Column(
                                          // mainAxisAlignment: MainAxisAlignment.center,
                                          // crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Spacer(),
                                            SvgPicture.asset(
                                                "assets/icons/26.svg"),
                                            Text(
                                              "To’lovlar mavjud emas",
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Color(0xFF1F2A37),
                                              ),
                                            ),
                                            Text(
                                              "Bu yerda sizning to’lovlaringiz tarixi ko’rinadi",
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Color(0xFF6C737F),
                                              ),
                                            ),
                                            SizedBox(height: 100),
                                            Spacer(),
                                          ],
                                        ),
                                      );
                                    }
                                    return ListView.separated(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16),
                                      itemCount: filteredItems.length,
                                      separatorBuilder: (_, __) =>
                                          const SizedBox(height: 10),
                                      itemBuilder: (_, i) {
                                        final item = filteredItems[i];
                                        return ItemBalance(
                                          reason: item.comment ?? '',
                                          description: item.paymentMethod ?? '',
                                          balance:
                                              item.amount?.toString() ?? '',
                                          date: item.createdAt
                                                  ?.substring(0, 10) ??
                                              '',
                                          isIncreasing: item.action == "INCOME",
                                        );
                                      },
                                    );
                                  }),
                                ),
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
