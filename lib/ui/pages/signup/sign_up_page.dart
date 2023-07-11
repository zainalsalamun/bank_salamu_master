import 'package:flutter/material.dart';

import '../../../shared/theme.dart';
import '../../widget/button.dart';
import '../../widget/forms.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
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
            'Join Us to Unlock\nYour Growth',
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
                    title: 'Full Name',
                    hintText: 'Enter your fullname',
                    obsecureText: false,
                    isShowTitle: true),
                const SizedBox(height: 30),
                const CustomFormField(
                    title: 'Email Address',
                    hintText: 'Enter your email address',
                    obsecureText: false,
                    isShowTitle: true),
                const SizedBox(height: 30),
                const CustomFormField(
                    title: 'Password',
                    hintText: 'Enter your password',
                    obsecureText: false,
                    isShowTitle: true),
                const SizedBox(height: 30),
                CustomFilledButton(
                  title: 'Continue',
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/signup-set-profile',
                    );
                  },
                )
              ],
            ),
          ),
          const SizedBox(height: 50),
          CustomTextButton(
            title: 'Sign In',
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/signin',
              );
            },
          ),
        ],
      ),
    );
  }
}
