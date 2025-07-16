import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import '../generated/l10n.dart';
import '../utils/app_routes.dart';
import '../utils/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MediaQuery(
        data: MediaQuery.of(context).copyWith(
          textScaler: const TextScaler.linear(1),
        ),
        child: ToastificationWrapper(
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Fitrat Parent',
            theme: appThemeData,
            // locale: Locale(langCode ?? "uz"),
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate
            ],
            supportedLocales: const [
              Locale('uz'),
            ],
            routerConfig: router,
          ),
        ),
      ),
    );
  }
}
