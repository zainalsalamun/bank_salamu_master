import 'package:bank_salamu_master/ui/widget/forms.dart';
import 'package:flutter/material.dart';

import '../../../shared/theme.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Transfer'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              'Search',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            const CustomFormField(
              title: 'by username',
              isShowTitle: false,
            ),
          ],
        ));
  }
}
