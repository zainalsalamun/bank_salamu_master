import 'package:bank_salamu_master/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  final String title;
  final bool obsecureText;
  final TextEditingController? controller;
  final bool isShowTitle;
  final Function(String)? onFileSubmited;
  final String hintText;

  const CustomFormField(
      {Key? key,
      required this.title,
      this.obsecureText = false,
      this.controller,
      this.isShowTitle = false,
      this.onFileSubmited,
      this.hintText = ''})
      : super(key: key);

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
          hintText: !isShowTitle ? title : null,
          contentPadding: const EdgeInsets.all(12),
        ),
        onFieldSubmitted: onFileSubmited,
      )
    ]);
  }
}
