import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../balance/widgets/custom_chip.dart';
import '../widgets/dialogs.dart';
import '../widgets/item_products.dart';

class ProductTabView extends StatefulWidget {
  const ProductTabView({super.key});

  @override
  State<ProductTabView> createState() => _ProductTabViewState();
}

class _ProductTabViewState extends State<ProductTabView> {
  int selectedChip = 0;
  final chipLabels = [
    "Barchasi",
    "Noutbuklar",
    "Planshetlar",
    "Smartfonlar",
    "Soatlar"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffF3F4F6),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                height: 206,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
            const SizedBox(height: 12),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: List.generate(chipLabels.length, (index) {
                    return Padding(
                      padding: EdgeInsets.only(
                          right: index == chipLabels.length - 1 ? 0 : 10),
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
            ),
            const SizedBox(height: 12),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              itemCount: 10,
              separatorBuilder: (_, __) => const SizedBox(height: 12),
              itemBuilder: (context, index) => ItemProduct(
                imageUrl:
                'https://maxcom.uz/storage/product/6nxaV0tjA5cUINl0z3yi4w1r6URrnwFpJb8Vfvxe.png',
                name: 'Macbook Pro 14',
                description: 'Apple M2 Pro Chip, 16GB RAM',
                cost: '100,000',
                onClick: () {
                  showPurchaseBottomSheet(
                    context: context,
                    name: "Macbook Pro 14 $index",
                    imageUrl:
                    "https://maxcom.uz/storage/product/6nxaV0tjA5cUINl0z3yi4w1r6URrnwFpJb8Vfvxe.png",
                    coins: "100,000",
                    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    onConfirm: () {},
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
