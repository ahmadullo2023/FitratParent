import 'package:fitrat_parent2/utils/number_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../generated/l10n.dart';
import '../../presentation/widgets/custom_button.dart';
import '../app_assets.dart';
import '../exceptions/failure.dart';

class CustomNoInternetWidget extends StatelessWidget {
  const CustomNoInternetWidget({
    super.key,
    required this.onTap,
    this.error,
    this.bgColor = Colors.transparent,
    required this.isLoading,
  });

  final Function() onTap;
  final Object? error;
  final Color bgColor;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    var errorText = S.of(context).somethingWentWrong;
    if (error is ConnectionFailure) {
      errorText = (error as ConnectionFailure).getLocalizedMessage(context);
    } else if (error is ServerFailure) {
      errorText = (error as ServerFailure).getLocalizedMessage(context);
    } else if (error is UnknownFailure) {
      errorText = (error as UnknownFailure).getLocalizedMessage(context);
    }
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      AppIcons.noInternet,
                    ),
                    16.vertical,
                    Text(
                      errorText,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: CustomButton(
                text: S.of(context).tryAgain,
                onPressed: onTap,
              ),
            ),
            12.vertical
          ],
        ),
      ),
    );
  }
}
