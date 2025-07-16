import 'package:flutter/cupertino.dart';
import '../../balance/widgets/custom_chip.dart';
import '../widgets/item_orders.dart';
import '../widgets/item_products.dart';

class OrderTabView extends StatefulWidget {
  const OrderTabView({super.key});

  @override
  State<OrderTabView> createState() => _OrderTabViewState();
}

class _OrderTabViewState extends State<OrderTabView> {
  int selectedChip = 0;
  final chipLabels = ["Jarayonda", "Yakunlangan", "Rad etilgan"];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffF3F4F6),
      child: Column(
        children: [
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Row(
              children: List.generate(chipLabels.length, (index) {
                return Padding(
                  padding: EdgeInsets.only(
                    right: index == chipLabels.length - 1 ? 0 : 10,
                  ),
                  child: CustomChip(
                    label: chipLabels[index],
                    isSelected: selectedChip == index,
                    onTap: () {
                      setState(() {
                        selectedChip = index;
                      });
                    },
                  ),
                );
              }),
            ),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: ListView.separated(
              itemCount: 8,
              separatorBuilder: (_, __) => const SizedBox(height: 12),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              itemBuilder: (_, index) => ItemOrder(
                imageUrl:
                    'https://maxcom.uz/storage/product/6nxaV0tjA5cUINl0z3yi4w1r6URrnwFpJb8Vfvxe.png',
                name: 'Buyurtma $index',
                description: 'Holat: ${chipLabels[selectedChip]}',
                onClick: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
