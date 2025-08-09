import 'package:fitrat_parent2/presentation/home/bloc/home_bloc.dart';
import 'package:fitrat_parent2/presentation/payments/bloc/payment_bloc.dart';
import 'package:fitrat_parent2/presentation/payments/pages/payment_single.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import '../../../utils/app_assets.dart';
import '../../../utils/app_colors.dart';

class PaymentsPage extends StatefulWidget {
  const PaymentsPage({super.key});

  @override
  State<PaymentsPage> createState() => _PaymentsPageState();
}

class _PaymentsPageState extends State<PaymentsPage> {
  @override
  void initState() {
    context.read<PaymentBloc>().add(PaymentHistoryEvent());
    super.initState();
  }

  String formatDate(String isoString) {
    final dateTime = DateTime.parse(isoString).toLocal();
    final formatter = DateFormat('dd.MM.yyyy, HH:mm');
    return formatter.format(dateTime);
  }


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return BlocBuilder<PaymentBloc, PaymentState>(
          builder: (payContext, payState) {
            print("BU build bolganida payState ==> ${payState.paymentHistoryModel}");
            final filteredPayments = payState.paymentHistoryModel?.results ?? [];

            return Scaffold(
              backgroundColor: Colors.white,
              body: SafeArea(
                child: RefreshIndicator(
                  color: Colors.white,
                    backgroundColor: Colors.grey.shade300,
                  onRefresh: () async {
                    context.read<PaymentBloc>().add(PaymentHistoryEvent());
                  },
                  child: SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "To'lovlar",
                          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          height: 160,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 1,
                            itemBuilder: (context, index) => Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 7),
                              child: SizedBox(
                                width: 330,
                                child: _buildChildCard(
                                  name: state.learningResponse?.first.fullName?.toString() ?? "",
                                  subjects: "Kimyo noldan",
                                  balance: state.learningResponse?.first.balance?.toString() ?? "0",
                                  progress: state.learningResponse?.first.overallLearning?.toInt() ?? 0,
                                  avatar: Icons.person,
                                  balanceColor: Colors.green,
                                  context: context,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 28),
                        const Text(
                          "To‘lovlar tarixi",
                          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                        SizedBox(
                          height: 410,
                          child: filteredPayments.isEmpty
                              ? Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset("assets/icons/26.svg"),
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
                          )
                              : ListView.builder(
                            itemCount: filteredPayments.length,
                            itemBuilder: (context, index) {
                              final item = filteredPayments[index];
                              return _paymentItem(
                                item.action != "INCOME",
                                item.payment_method ?? "",
                                item.amount.toString(),
                                formatDate(item.created_at!),
                                item.kind?.name ?? "",
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }




  // @override
  // Widget build(BuildContext context) {
  //   return BlocBuilder<HomeBloc, HomeState>(
  //     builder: (context, state) {
  //       return BlocBuilder<PaymentBloc, PaymentState>(
  //         builder: (payContext, payState) {
  //           print(
  //               "BU build bolganida payState ==> ${payState.paymentHistoryModel}");
  //           final filteredPayments =
  //               payState.paymentHistoryModel?.results ?? [];
  //           return Scaffold(
  //             backgroundColor: Colors.white,
  //             body: SafeArea(
  //               child: SingleChildScrollView(
  //                 padding: const EdgeInsets.all(20),
  //                 child: Column(
  //                   crossAxisAlignment: CrossAxisAlignment.start,
  //                   children: [
  //                     const Text(
  //                       "To'lovlar",
  //                       style: TextStyle(
  //                           fontSize: 22, fontWeight: FontWeight.w600),
  //                     ),
  //                     const SizedBox(height: 20),
  //                     SizedBox(
  //                       height: 160,
  //                       child: ListView.builder(
  //                         scrollDirection: Axis.horizontal,
  //                         itemCount: 1,
  //                         itemBuilder: (context, index) => Padding(
  //                           padding: const EdgeInsets.symmetric(horizontal: 7),
  //                           child: SizedBox(
  //                             width: 330,
  //                             child: _buildChildCard(
  //                               name: state.learningResponse?.first.fullName
  //                                       ?.toString() ??
  //                                   "",
  //                               subjects: "Kimyo noldan",
  //                               balance: state.learningResponse?.first.balance
  //                                       ?.toString() ??
  //                                   "0",
  //                               progress: state
  //                                       .learningResponse?.first.overallLearning
  //                                       ?.toInt() ??
  //                                   0,
  //                               avatar: Icons.person,
  //                               balanceColor: Colors.green,
  //                               context: context,
  //                             ),
  //                           ),
  //                         ),
  //                       ),
  //                     ),
  //                     const SizedBox(height: 28),
  //                     const Text(
  //                       "To‘lovlar tarixi",
  //                       style: TextStyle(
  //                           fontWeight: FontWeight.w600, fontSize: 16),
  //                     ),
  //                     SizedBox(
  //                       height: 410,
  //                       child: filteredPayments.isEmpty
  //                           ? Center(
  //                               child: Column(
  //                                 mainAxisAlignment: MainAxisAlignment.center,
  //                                 children: [
  //                                   SvgPicture.asset("assets/icons/26.svg"),
  //                                   const SizedBox(height: 8),
  //                                   const Text(
  //                                     "To’lovlar mavjud emas",
  //                                     style: TextStyle(
  //                                         color: Color(0xFF1F2A37),
  //                                         fontSize: 18,
  //                                         fontWeight: FontWeight.w600),
  //                                   ),
  //                                   const SizedBox(height: 8),
  //                                   const Text(
  //                                     "Bu yerda sizning to’lovlaringiz tarixi ko’rinadi",
  //                                     style:
  //                                         TextStyle(color: Color(0xFF6C737F)),
  //                                   ),
  //                                 ],
  //                               ),
  //                             )
  //                           : ListView.builder(
  //                               itemCount: filteredPayments.length,
  //                               itemBuilder: (context, index) {
  //                                 final item = filteredPayments[index];
  //                                 return _paymentItem(
  //                                   item.action != "INCOME",
  //                                   item.payment_method ?? "",
  //                                   item.amount.toString(),
  //                                   formatDate(item.created_at!),
  //                                   item.kind?.name ?? "",
  //                                 );
  //                               },
  //                             ),
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //             ),
  //           );
  //         },
  //       );
  //     },
  //   );
  // }

  Widget _paymentItem(
      bool isIncome, String method, String amount, String date, String name) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: const Color(0xFFE5E7EB),
            width: .8,
          ),
        ),
        child: Row(
          children: [
            isIncome
                ? Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Color(0xFFFEE2E2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(Icons.north_east,
                        size: 20, color: Color(0xFFDC2626)),
                  )
                : Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF1FCF6),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Transform.rotate(
                      angle: 3.1416, // 180 gradus = pi radian
                      child: Icon(
                        Icons.north_east,
                        size: 20,
                        color: Color(0xFF35B26A),
                      ),
                    ),
                  ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    // "Payment for course",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  Text(method, style: const TextStyle(color: Colors.grey)),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  NumberFormat.decimalPattern().format(double.tryParse(amount)),
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 4),
                Text(
                  date,
                  style: const TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildChildCard({
    required String name,
    required String subjects,
    required String balance,
    required int progress,
    required IconData avatar,
    required Color balanceColor,
    required context,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Color(0xFFF3F4F6), borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipOval(
                child: Container(
                  height: 46,
                  width: 46,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey.shade300,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: SvgPicture.asset(
                      AppIcons.person,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,
                      style: const TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 20)),
                  Text(subjects,
                      style: const TextStyle(color: Color(0xFF6C737F))),
                ],
              ),
              const Spacer(),
            ],
          ),
          const SizedBox(height: 12),
          Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              border: Border.all(
                color: const Color(0xFFE5E7EB),
                width: 2.5,
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.account_balance_wallet,
                      color: Color(0xFF269354)),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 8),
                    Text(
                      NumberFormat.decimalPattern()
                          .format(double.tryParse(balance)),
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color(0xFF1F2A37)),
                    ),
                    Text(
                      "Balans",
                      style: TextStyle(color: Color(0xFF6C737F)),
                    ),
                  ],
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PaymentScreen()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 120,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xFF35B26A),
                        border: Border(
                          top: BorderSide(
                              color: AppColors.emerald600, width: 1.5),
                          left: BorderSide(
                              color: AppColors.emerald600, width: 1.5),
                          right: BorderSide(
                              color: AppColors.emerald600, width: 1.5),
                          bottom:
                              BorderSide(color: AppColors.emerald600, width: 3),
                        ),
                      ),
                      child: Center(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("+",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25)),
                            SizedBox(width: 10),
                            Text("To'ldirish",
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
