import 'package:flutter/material.dart';

import '../../../shared/theme.dart';
import '../../widget/button.dart';
import '../../widget/forms.dart';

class ProfileEditPage extends StatelessWidget {
  const ProfileEditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              children: [
                const CustomFormField(
                  title: 'Username',
                  hintText: 'zainalsalamun',
                  obsecureText: false,
                  isShowTitle: true,
                ),
                const SizedBox(height: 30),
                const CustomFormField(
                  title: 'Full Name',
                  hintText: 'Zainal Salamun',
                  obsecureText: false,
                  isShowTitle: true,
                ),
                const SizedBox(height: 30),
                const CustomFormField(
                  title: 'Email Address',
                  hintText: 'zainalrtf@gmail.com',
                  obsecureText: false,
                  isShowTitle: true,
                ),
                const SizedBox(height: 30),
                const CustomFormField(
                  title: 'Password',
                  hintText: '12345678',
                  obsecureText: true,
                  isShowTitle: true,
                ),
                const SizedBox(height: 30),
                CustomFilledButton(
                  title: 'Update',
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
        ],
      ),
    );
  }
}
