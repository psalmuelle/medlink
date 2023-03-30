import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medlink/pages/login_screen.dart';
import 'package:medlink/pages/register_screen.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  color: Theme.of(context).primaryColor,
                  width: double.infinity,
                  height: 450,
                  child: Container(
                    alignment: Alignment.center,
                    width: 350,
                    height: 350,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: SvgPicture.asset(
                      'assets/onboard_img.svg',
                      semanticsLabel: 'Hospital',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                  width: 10,
                ),
                Container(
                    width: 100,
                    height: 10,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        color: Color(0xff8667f2)),
                    alignment: Alignment.center),
                const SizedBox(
                  width: double.infinity,
                  height: 40,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  child: Text(
                    'Discover Global Hospitals All-in-one',
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                ),
                const SizedBox(
                  width: double.infinity,
                  height: 60,
                ),
                SizedBox(
                    width: 230,
                    height: 55,
                    child: ElevatedButton(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Theme.of(context).primaryColor,
                          shadowColor: Theme.of(context).primaryColor,
                          fixedSize: const Size(171, 46),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>const RegisterPage()));
                        },
                        child: Text(
                          'Register',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(color: Colors.white),
                        ))),
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                    width: 230,
                    height: 55,
                    child: ElevatedButton(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Theme.of(context).primaryColor,
                          shadowColor: Theme.of(context).primaryColor,
                          fixedSize: const Size(171, 46),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>const LoginPage()));
                        },
                        child: Text(
                          'Login',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(color: Colors.white),
                        ))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
