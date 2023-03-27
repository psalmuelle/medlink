import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText
    });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            padding: const EdgeInsets.only(bottom: 3),
            alignment: Alignment.centerLeft,
            child: Text(
              hintText,
              style: Theme.of(context)
                  .textTheme
                  .displayMedium
                  ?.copyWith(fontSize: 18),
            )),
        TextField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade400)),
            fillColor: Colors.white,
            filled: true,
          ),
        )
      ],
    );
  }
}
