import 'package:bank_salamu_master/ui/widget/forms.dart';
import 'package:flutter/material.dart';
import '../../../shared/theme.dart';
import '../../widget/button.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          Container(
            width: 155,
            height: 50,
            margin: const EdgeInsets.only(
              top: 100,
              bottom: 100,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/img_logo_light.png',
                ),
              ),
            ),
          ),
          Text(
            'Sign In &\nGrow Your FInance',
            style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              children: [
                const CustomFormField(
                    title: 'Email Address',
                    hintText: 'Enter your email address',
                    obsecureText: false,
                    isShowTitle: true),
                const SizedBox(height: 8),
                const CustomFormField(
                    title: 'Password',
                    hintText: 'Enter your password',
                    obsecureText: false,
                    isShowTitle: true),
                const SizedBox(height: 8),
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'Forgot Password?',
                    style: blueTextStyle,
                  ),
                ),
                const SizedBox(height: 30),
                CustomFilledButton(
                  width: double.infinity,
                  title: 'Sign In',
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      '/home-page',
                      (route) => false,
                    );
                  },
                )
              ],
            ),
          ),
          const SizedBox(height: 50),
          CustomTextButton(
            title: 'Create New Account',
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/signup',
              );
            },
          ),
        ],
      ),
    );
  }
}
