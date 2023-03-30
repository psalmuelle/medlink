import 'package:flutter/material.dart';
import 'package:medlink/components/my_textfield.dart';
import 'package:medlink/pages/home_screen.dart';
import 'package:medlink/pages/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:medlink/auth.dart';


class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

String? errorMessage = '';
  // text editing controllers
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future<void> createUserWithEmailAndPassword() async{
    try {
      await Auth().createUserWithEmailAndPassword(email: _emailController.text, password: _passwordController.text).then((value) => Navigator.pop(context));

    } on FirebaseAuthException catch(e) {
        setState(() {
          errorMessage = e.message;
        });
    }
  }
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
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(top: 60, bottom: 40, left: 30),
                child: SizedBox(
                  width: 200,
                  height: 100,
                  child: Text(
                    'Create An Account',
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge
                        ?.copyWith(fontSize: 36),
                  ),
                ),
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
                            hintText: 'Email',
                            controller: _emailController,
                            obscureText: false),
                        const SizedBox(
                          height: 20,
                        ),
                        MyTextField(
                            hintText: 'Password',
                            controller: _passwordController,
                            obscureText: true),
                      ]),
                    ),
                  )),
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
                        onPressed: createUserWithEmailAndPassword,
                        child: Text(
                          'Register',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(color: Colors.white),
                        ))),
              ),
              const SizedBox(
                height: 30,
              ),
              const Divider(
                thickness: 1.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>const LoginPage()));
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ))
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
