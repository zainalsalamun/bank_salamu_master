import 'package:bank_salamu_master/ui/widget/button.dart';
import 'package:flutter/material.dart';

import '../../../shared/theme.dart';

class SignUpSuccess extends StatelessWidget {
  const SignUpSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Akun Berhasil\nTerdaftar',
              style:
                  blackTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 26),
            Text(
              'Grow you finance start\ntogether with us',
              style: greyTextStyle.copyWith(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),
            CustomFilledButton(
                width: 183,
                title: 'Get Started',
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    '/home-page',
                    (route) => false,
                  );
                }),
          ],
        ),
      ),
    );
  }
}
