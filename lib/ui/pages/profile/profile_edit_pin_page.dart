import 'package:flutter/material.dart';

import '../../../shared/theme.dart';
import '../../widget/button.dart';
import '../../widget/forms.dart';

class ProfileEditPinPage extends StatelessWidget {
  const ProfileEditPinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Pin'),
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
                  title: 'Old Pin',
                  hintText: '123456',
                  obsecureText: false,
                  isShowTitle: true,
                ),
                const SizedBox(height: 30),
                const CustomFormField(
                  title: 'New Pin',
                  hintText: '123456',
                  obsecureText: false,
                  isShowTitle: true,
                ),
                const SizedBox(height: 30),
                CustomFilledButton(
                  title: 'Update Now',
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      '/profile-edit-success',
                      ((route) => false),
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
