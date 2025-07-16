import 'package:fitrat_parent2/presentation/payments/pages/payment_single.dart';
import 'package:flutter/material.dart';
import '../../../utils/app_colors.dart';

class PaymentsPage extends StatelessWidget {
  const PaymentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
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
                  itemCount: 3,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7),
                    child: SizedBox(
                      width: 300,
                      child: _buildChildCard(
                        name: "James Wilson",
                        subjects: "Ingliz tili, Matematika",
                        balance: "300,000",
                        progress: 88,
                        avatar: Icons.person,
                        balanceColor: Colors.green,
                        context: context,
                      ),
                    ),
                  ),
                ),
              ),
              // SizedBox(
              //   height: 200,
              //   child: ListView.builder(
              //     scrollDirection: Axis.horizontal,
              //     itemCount: 3,
              //       itemBuilder: (context, index) =>
              //   _buildChildCard(
              //     name: "James Wilson",
              //     subjects: "Ingliz tili, Matematika",
              //     balance: "300,000",
              //     progress: 88,
              //     avatar: Icons.person,
              //     balanceColor: Colors.green,
              //     context: context,
              //   ),
              //   ),
              // ),
              const SizedBox(height: 28),
              const Text(
                "To‘lovlar tarixi",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
              const SizedBox(height: 16),
              _paymentItem("Click", "250,000UZS", "09.04.2024, 12:00"),
              const SizedBox(height: 12),
              _paymentItem("Payme", "250,000UZS", "09.04.2024, 12:00"),
            ],
          ),
        ),
      ),
    );
  }

  Widget _paymentItem(String method, String amount, String date) {
    return Container(
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
          Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: const Color(0xFFFEE2E2),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(Icons.north_east,
                size: 20, color: Color(0xFFDC2626)),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Payment for course",
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
                amount,
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
        color: Color(0xFFF3F4F6),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(radius: 24, child: Icon(avatar)),
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
                      "300 000",
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
