import 'package:fitrat_parent2/data/db/cache.dart';
import 'package:fitrat_parent2/data/hive/hive_helper.dart';
import 'package:fitrat_parent2/presentation/balance/bloc/balance_bloc.dart';
import 'package:fitrat_parent2/presentation/home/bloc/home_bloc.dart';
import 'package:fitrat_parent2/presentation/main/bloc/main_bloc.dart';
import 'package:fitrat_parent2/presentation/payments/bloc/payment_bloc.dart';
import 'package:fitrat_parent2/presentation/profile/bloc/profile_bloc.dart';
import 'package:fitrat_parent2/presentation/profile/widgets/edit_profile/bloc/edit_profile_bloc.dart';
// import 'package:fitrat_parent2/presentation/main/pages/main_page.dart';
import 'package:fitrat_parent2/presentation/splash/splash_page.dart';
import 'package:fitrat_parent2/utils/servise/no_internet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'generated/l10n.dart';

final navigatorKey = GlobalKey<NavigatorState>();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  InternetChecker().initialize();

  await initializeCache();
  await HiveHelper.init();
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
        // BlocProvider<EditProfileBloc>(
        //   create: (_) => EditProfileBloc()..add(EditData(name: '', lastName: '', phone: '')),
        // ),
        BlocProvider<MainBloc>(
          create: (_) => MainBloc()..add(LoadMe()),
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
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return App();
    return MaterialApp(
      navigatorKey: InternetChecker().navigatorKey,
      // navigatorKey: navigatorKey,
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
      // home: HolderScreen(),
    );
  }
}
