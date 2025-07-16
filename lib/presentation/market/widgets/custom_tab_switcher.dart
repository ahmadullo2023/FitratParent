import 'package:flutter/material.dart';
import '../../../utils/theme.dart';

class CustomTabSwitcher extends StatelessWidget {
  final int selectedIndex;
  final List<String> tabs;
  final ValueChanged<int> onChanged;

  const CustomTabSwitcher({
    super.key,
    required this.selectedIndex,
    required this.tabs,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      color: Colors.white,
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          color: const Color(0xffF3F4F6),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: List.generate(tabs.length, (index) {
            final bool isSelected = index == selectedIndex;
            return Expanded(
              child: GestureDetector(
                onTap: () => onChanged(index),
                child: Container(
                  margin: const EdgeInsets.all(4),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: isSelected ? Colors.white : Colors.transparent,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    tabs[index],
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: isSelected
                          ? const Color(0xff0D121C)
                          : const Color(0xff9DA4AE),
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
