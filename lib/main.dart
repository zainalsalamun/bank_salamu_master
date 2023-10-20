import 'package:bank_salamu_master/shared/theme.dart';
import 'package:bank_salamu_master/ui/pages/home/home_page.dart';
import 'package:bank_salamu_master/ui/pages/onboarding/onboarding_page.dart';
import 'package:bank_salamu_master/ui/pages/profile/profile_edit_page.dart';
import 'package:bank_salamu_master/ui/pages/signin/signin_page.dart';
import 'package:bank_salamu_master/ui/pages/signup/sign_up_page.dart';
import 'package:bank_salamu_master/ui/pages/signup/sign_up_set_ktp.dart';
import 'package:bank_salamu_master/ui/pages/signup/sign_up_set_profile.dart';
import 'package:bank_salamu_master/ui/pages/signup/sign_up_success_page.dart';
import 'package:bank_salamu_master/ui/pages/splash/splash_page.dart';
import 'package:bank_salamu_master/ui/pages/topup/pin_page.dart';
import 'package:flutter/material.dart';

import 'ui/pages/profile/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: lightBackgroundColor,
        appBarTheme: AppBarTheme(
          backgroundColor: lightBackgroundColor,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(color: blackColor),
          titleTextStyle:
              blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
        ),
      ),
      routes: {
        '/': (context) => const SplashPage(),
        '/onboarding': (context) => const OnboardingPage(),
        '/signin': (context) => const SignInPage(),
        '/signup': (context) => const SignUpPage(),
        '/signup-set-profile': (context) => const SignUpSetProfile(),
        '/signup-set-ktp': (context) => const SignUpSetKtp(),
        '/signup-success': (context) => const SignUpSuccess(),
        '/home-page': (context) => const HomePage(),
        '/profile': (context) => const ProfilePage(),
        '/pin-page': (context) => const PinPage(),
        '/profile-edit': (context) => const ProfileEditPage(),
      },
    );
  }
}
