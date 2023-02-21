import 'package:finance_app_ui/common/app_colors.dart';
import 'package:finance_app_ui/ui/screens/savings/savings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'ui/screens/app/app_screen.dart';
import 'ui/screens/cards/cards_screen.dart';
import 'ui/screens/onboarding/onboarding_screen.dart';
import 'ui/screens/splash/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await ScreenUtil.ensureScreenSize();

  runApp(
    const ProviderScope(child: MyApp()),
  );

  // if (Platform.isAndroid) {
  //   SystemUiOverlayStyle systemUiOverlayStyle = const SystemUiOverlayStyle(
  //     statusBarColor: Colors.transparent,
  //   );
  //   SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  // }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        themeMode: ThemeMode.light,
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.scaffoldBackground,
          brightness: Brightness.light,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          fontFamily: GoogleFonts.poppins().fontFamily,
          appBarTheme: const AppBarTheme(elevation: 0.0),
          inputDecorationTheme: const InputDecorationTheme(),
        ),
        initialRoute: AppScreen.routeName,
        routes: {
          AppScreen.routeName: (context) => const AppScreen(),
          OnboardingScreen.routeName: (context) => const OnboardingScreen(),
          SplashScreen.routeName: (context) => const SplashScreen(),
          CardsScreen.routeName: (context) => const CardsScreen(),
          SavingsScreen.routeName: (context) => const SavingsScreen(),
        },
      ),
    );
  }
}
