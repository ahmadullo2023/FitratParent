import 'package:flutter/material.dart';
import '../../../utils/app_assets.dart';
import '../../../utils/app_colors.dart';
import '../../widgets/custom_button.dart';

class TestsWidget extends StatelessWidget {
  final VoidCallback onClick;
  final String title;

  const TestsWidget({super.key, required this.onClick, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        width: double.infinity,
        height: 140,
        decoration: BoxDecoration(
          color: AppColors.emerald100,
          borderRadius: BorderRadius.circular(16),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Stack(
            children: [
              Positioned(
                right: -24,
                top: 8,
                child: Container(
                  width: 180,
                  height: 180,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.emerald200,
                  ),
                ),
              ),

              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16, bottom: 16, left: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            title,
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w900,
                                color: AppColors.emerald500,
                                fontFamily: "Outfit"
                            ),
                          ),
                          SizedBox(
                              width: 86,
                              child: CustomButton(
                                  text: "O'tish",
                                  fontFamily: "outfitMedium",
                                  height: 40,
                                  onPressed: onClick
                              )
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 156),
                ],
              ),

              Positioned(
                right: 0,
                top: -16,
                child: SizedBox(
                  width: 156,
                  height: 156,
                  child: Image.asset(
                    title == "Testlar" ? AppIcons.bloodReport : AppIcons.trophy,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}