import 'package:bank_salamu_master/shared/theme.dart';
import 'package:flutter/material.dart';

class BankItem extends StatelessWidget {
  const BankItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 18,
      ),
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
        border: Border.all(
          color: lightBackgroundColor,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.network(
            'assets/img_logo_light.png',
            height: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Bank',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                'Salamu Master',
                style: greyTextStyle.copyWith(fontSize: 16),
              ),
            ],
          )
        ],
      ),
    );
  }
}
