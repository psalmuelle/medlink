import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medlink/components/my_textfield.dart';
import 'package:medlink/pages/home_screen.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 60,
              ),
              Text(
                'Login',
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const SizedBox(
                height: 30,
              ),
              SvgPicture.asset(
                'assets/Group 903.svg',
                semanticsLabel: 'Profile',
              ),
              const SizedBox(
                height: 45,
              ),
              FractionallySizedBox(
                  widthFactor: 0.9,
                  alignment: Alignment.center,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary,
                        borderRadius: BorderRadius.circular(8)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 40),
                      child: Column(children: [
                        MyTextField(
                            hintText: 'Username',
                            controller: usernameController,
                            obscureText: false),
                        const SizedBox(
                          height: 20,
                        ),
                        MyTextField(
                            hintText: 'Password',
                            controller: passwordController,
                            obscureText: true),
                      ]),
                    ),
                  )),
              const SizedBox(
                height: 7,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forget Password?',
                      style: Theme.of(context).textTheme.bodyMedium,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: ElevatedButton(
                     style: OutlinedButton.styleFrom(
                          backgroundColor: Theme.of(context).primaryColor,
                          shadowColor: Theme.of(context).primaryColor,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()));
                        },
                        child: Text(
                          'Login',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(color: Colors.white),
                        ))),
              ),
              
            ],
          ),
        ),
      )),
    );
  }
}
