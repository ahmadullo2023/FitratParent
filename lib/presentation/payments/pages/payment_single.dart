import 'package:fitrat_parent2/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final _amountController = TextEditingController();
  String? selectedMethod;
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back_outlined),
        ),
        title: const Text("To‘lov",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    FocusScope.of(context).unfocus();
                    showChildSelectionSheet(context);
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    decoration: BoxDecoration(
                      color: Color(0xFFF3F4F6),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 26,
                          backgroundImage:
                              NetworkImage('https://via.placeholder.com/150'),
                        ),
                        const SizedBox(width: 12),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("James Wilson",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16)),
                              Text("Ingliz tili IELTS",
                                  style: TextStyle(color: Colors.grey)),
                            ],
                          ),
                        ),
                        const Icon(Icons.expand_more),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                const Text("Summa",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color(0xFF1F2A37))),
                const SizedBox(height: 5),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFF3F4F6),
                    borderRadius: BorderRadius.circular(12),
                    border: const Border(
                      top: BorderSide(color: Color(0xFFF3F4F6), width: 1),
                      left: BorderSide(color: Color(0xFFF3F4F6), width: 1),
                      right: BorderSide(color: Color(0xFFF3F4F6), width: 1),
                      bottom: BorderSide(color: Color(0xFFF3F4F6), width: 3),
                    ),
                  ),
                  child: TextField(
                    controller: _amountController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "0",
                      filled: true,
                      fillColor: Color(0xFFF9FAFB),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const Text("To'lov usuli",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color(0xFF1F2A37))),
                const SizedBox(height: 5),
                GestureDetector(
                  onTap: () {
                    FocusScope.of(context).unfocus();
                    showPaymentMethodBottomSheet(context).whenComplete(() {
                      FocusScope.of(context).unfocus();
                    });
                    FocusScope.of(context).unfocus();
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 16),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF9FAFB),
                      borderRadius: BorderRadius.circular(12),
                      border: const Border(
                        top: BorderSide(color: Color(0xFFF3F4F6), width: 1),
                        left: BorderSide(color: Color(0xFFF3F4F6), width: 1),
                        right: BorderSide(color: Color(0xFFF3F4F6), width: 1),
                        bottom: BorderSide(color: Color(0xFFF3F4F6), width: 3),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          selectedValue ?? "To'lov turini tanlang",
                          style: TextStyle(
                            color: selectedValue == null
                                ? Colors.grey
                                : Colors.black,
                            fontSize: 16,
                          ),
                        ),
                        const Icon(Icons.keyboard_arrow_down, size: 24),
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                CustomButton(text: "To‘lash", onPressed: () {}),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void showChildSelectionSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
      ),
      builder: (context) {
        int selectedIndex = 0;
        return StatefulBuilder(builder: (context, setState) {
          return Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 48,
                    height: 6,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Farzandingiz",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 18),
                  ...List.generate(2, (index) {
                    final isSelected = selectedIndex == index;
                    final name = index == 0 ? "James Wilson" : "Isabella Moore";
                    final subject = "Ingliz tili IELTS";
                    final avatar = index == 0
                        ? 'https://randomuser.me/api/portraits/men/32.jpg'
                        : 'https://randomuser.me/api/portraits/women/44.jpg';
                    return GestureDetector(
                      onTap: () => setState(() => selectedIndex = index),
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 16),
                        padding: const EdgeInsets.symmetric(
                            vertical: 6, horizontal: 12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: isSelected
                                ? Color(0xFFF3F4F6)
                                : Colors.grey.shade200,
                            width: 1.5,
                          ),
                        ),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundImage: NetworkImage(avatar),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    name,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    subject,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey.shade600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            if (isSelected)
                              const Icon(Icons.check, color: Colors.green),
                          ],
                        ),
                      ),
                    );
                  }),
                  const SizedBox(height: 12),
                  CustomButton(
                      text: "Tanlash",
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  const SizedBox(height: 12),
                ],
              ),
            ),
          );
        });
      },
    );
  }

  Future<void> showPaymentMethodBottomSheet(BuildContext context) async {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (_) => PaymentBottomSheet(),
    );
  }
}

class PaymentBottomSheet extends StatefulWidget {
  const PaymentBottomSheet({super.key});

  @override
  _PaymentBottomSheetState createState() => _PaymentBottomSheetState();
}

class _PaymentBottomSheetState extends State<PaymentBottomSheet> {
  int selectedIndex = 0;

  final List<String> paymentMethods = [
    'Click Evolution',
    'Payme',
    'Uzum Bank',
    'Paynet',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 40,
            height: 4,
            margin: const EdgeInsets.only(bottom: 12),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          // Title
          const Text(
            'To‘lov usuli',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 10),
          ...List.generate(paymentMethods.length, (index) {
            return ListTile(
              dense: true,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 16), // or EdgeInsets.zero
              title: Text(
                paymentMethods[index],
                style: const TextStyle(fontSize: 16),
              ),
              trailing: selectedIndex == index
                  ? const Icon(Icons.check, color: Colors.green)
                  : null,
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
            );
          }),
          const SizedBox(height: 8),
          CustomButton(
              text: "Tanlash",
              onPressed: () {
                Navigator.pop(context, paymentMethods[selectedIndex]);
              }),

          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

void showPaymentMethodBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (_) => PaymentBottomSheet(),
  );
}
