import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final onPressed;
  final bool isActive;
  final String text;

  const CustomButton(
      {Key? key,
      required this.onPressed,
      required this.text,
      required this.isActive})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: isActive
            ? ElevatedButton(
                onPressed: onPressed,
                style: OutlinedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                    shadowColor: Theme.of(context).primaryColor,
                    fixedSize: const Size.fromHeight(44)),
                child: const Text('Overview'),
              )
            : OutlinedButton(
                onPressed: onPressed,
                style: OutlinedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                    shadowColor: Theme.of(context).colorScheme.secondary,
                    fixedSize: const Size.fromHeight(45)),
                child: Text(text,
                    style: const TextStyle(
                      color: (Color(0xff353535)),
                    ))));
  }
}
