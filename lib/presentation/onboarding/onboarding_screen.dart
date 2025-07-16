import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../utils/app_assets.dart';
import '../login/pages/login_screen.dart';
import '../widgets/custom_button.dart';
import 'model/onboarding_model.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int _currentIndex = 0;

  final List<OnboardingData> pages = [
    OnboardingData(
      imagePath: AppIcons.onboarding1,
      title: "Sifatli va zamonaviy ta’lim",
    subtitle:"Har bir o‘quvchiga chuqur bilim, tanqidiy fikrlash va amaliy ko‘nikmalarni berishga qaratilgan zamonaviy yondashuv"
    ),
    OnboardingData(
      imagePath: AppIcons.onboarding2,
      title: "Kuchli jamoa va do‘stona muhit",
    subtitle: "O‘zaro hurmat, qo‘llab-quvvatlash va ishonch asosida shakllangan jamoa – har bir a’zoning o‘sishi uchun eng qulay muhit"
    ),
    OnboardingData(
        imagePath: AppIcons.onboarding3,
        title: "Maqsadga yo‘naltirilgan harakatlar",
    subtitle:"Aniq strategiya va qat’iyat bilan harakat qilib, o‘z oldimizga qo‘ygan yuksak maqsadlar sari doimiy taraqqiyotga intilamiz"
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final imageHeight = screenHeight * 0.5; // Top half for image

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Image section - takes top half
            SizedBox(
              height: imageHeight,
              child: PageView.builder(
                controller: _controller,
                itemCount: pages.length,
                onPageChanged: (index) {
                  setState(() => _currentIndex = index);
                },
                itemBuilder: (context, index) {
                  final page = pages[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Center(
                      child: SvgPicture.asset(
                        page.imagePath,
                        height: 200, // Fixed maximum height
                        fit: BoxFit.contain,
                      ),
                    ),
                  );
                },
              ),
            ),

            // Content section - takes bottom half
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    const SizedBox(height: 32),

                    // Title
                    Text(
                      pages[_currentIndex].title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF0D121C),
                        fontFamily: 'outfitMedium',
                      ),
                    ),

                    const SizedBox(height: 16),

                    // Subtitle
                    Text(
                      pages[_currentIndex].subtitle,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF6C737F),
                        fontFamily: 'outfitMedium',
                      ),
                    ),

                    const SizedBox(height: 24),

                    // Page indicator
                    SmoothPageIndicator(
                      controller: _controller,
                      count: pages.length,
                      effect: const ExpandingDotsEffect(
                        dotHeight: 6,
                        dotWidth: 13, // Middle value between 6 and 20
                        spacing: 6,
                        expansionFactor: 2,
                        activeDotColor: Color(0xFF10B981),
                        dotColor: Color(0xFFE5E7EB),
                      ),
                    ),

                    const Spacer(),

                    // Bottom button
                    CustomButton(
                      text: _currentIndex == pages.length - 1
                          ? "Boshladik"
                          : "Keyingisi",
                      onPressed: () {
                        if (_currentIndex == pages.length - 1) {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                        } else {
                          _controller.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        }
                      },
                    ),

                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}