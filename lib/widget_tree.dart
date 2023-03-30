import 'package:medlink/pages/home_screen.dart';
import 'package:medlink/auth.dart';
import 'package:flutter/material.dart';
import 'package:medlink/pages/onboarding_screen.dart';
//login and register

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});
  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return const HomePage();
        } else {
          return const OnboardingPage();
        }
      },
    );
  }
}
