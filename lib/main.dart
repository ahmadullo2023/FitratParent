import 'package:firebase_core/firebase_core.dart';
import 'package:fitrat_parent2/data/db/cache.dart';
import 'package:fitrat_parent2/data/hive/hive_helper.dart';
import 'package:fitrat_parent2/presentation/balance/bloc/balance_bloc.dart';
import 'package:fitrat_parent2/presentation/home/bloc/home_bloc.dart';
import 'package:fitrat_parent2/presentation/main/bloc/main_bloc.dart';
import 'package:fitrat_parent2/presentation/payments/bloc/payment_bloc.dart';
import 'package:fitrat_parent2/presentation/profile/bloc/profile_bloc.dart';
import 'package:fitrat_parent2/presentation/splash/splash_page.dart';
import 'package:fitrat_parent2/utils/servise/no_internet.dart';
import 'package:fitrat_parent2/utils/servise/notification_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_alice/alice.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:overlay_support/overlay_support.dart';

import 'generated/l10n.dart';

// navigatorKey umumiy foydalanish uchun
final navigatorKey = GlobalKey<NavigatorState>();

// Alice instance
final Alice alice = Alice(
  navigatorKey: navigatorKey,
  showNotification: true,
  showInspectorOnShake: true,
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  await NotificationService.initialize();
  InternetChecker().initialize();

  await initializeCache();
  await HiveHelper.init();

  // navigatorKey ulash
  alice.setNavigatorKey(navigatorKey);

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<MainBloc>(
          create: (_) => MainBloc()..add(LoadStudent()),
        ),
        BlocProvider<HomeBloc>(
          create: (_) => HomeBloc()..add(LoadStories()),
        ),
        BlocProvider<BalanceBloc>(
          create: (_) => BalanceBloc()..add(GetBalances()),
        ),
        BlocProvider<PaymentBloc>(
          create: (_) => PaymentBloc()
            ..add(PayEvent(lid: '', student: '', amount: '', type: '')),
        ),
        BlocProvider<ProfileBloc>(
          create: (_) => ProfileBloc()
            ..add(UpdateEvent(
                id: '',
                full_name: '',
                first_name: '',
                last_name: '',
                role: '',
                salary: 0,
                password: 0,
                pages: [],
                files: [],
                is_archived: false,
                filial: [],
                bonus: [],
                compensation: [])),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    NotificationService.getFcmToken();

    return OverlaySupport(
      child: MaterialApp(
        navigatorKey: alice.getNavigatorKey(),
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        showSemanticsDebugger: false,
        title: 'Fitrat Parent',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          fontFamily: GoogleFonts.outfit().fontFamily,
        ),
        home: SplashScreen(),
      ),
    );
  }
}
