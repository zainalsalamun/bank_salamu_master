import 'package:bank_salamu_master/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomFormField extends StatelessWidget {
  final String title;
  final bool obsecureText;
  final TextEditingController? controller;
  final bool isShowTitle;
  final Function(String)? onFileSubmited;

  const CustomFormField(
      {super.key,
      required this.title,
      required this.obsecureText,
      this.controller,
      required this.isShowTitle,
      this.onFileSubmited});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      if (isShowTitle)
        Text(
          title,
          style: blackTextStyle.copyWith(
            fontWeight: medium,
          ),
        ),
      if (isShowTitle) const SizedBox(height: 8),
      TextFormField(
        obscureText: obsecureText,
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          contentPadding: const EdgeInsets.all(12),
        ),
        onFieldSubmitted: onFileSubmited,
      )
    ]);
  }
}
