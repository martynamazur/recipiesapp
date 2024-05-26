import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../navigation/app_router.gr.dart';

final obscureTextProvider = StateProvider<bool>((ref) => true);

@RoutePage()
class SignIn extends ConsumerWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final obscureText = ref.watch(obscureTextProvider);

    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sign in',
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 48.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Your Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  validateEmail(value);
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                obscureText: obscureText,
                decoration: InputDecoration(
                  labelText: 'Password',
                  suffixIcon: IconButton(
                    icon: Icon(
                      obscureText? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () {
                      ref.read(obscureTextProvider.notifier).state = !obscureText;
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
              SizedBox(height: 8.0),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {},
                  child: Text('Forget password ?', style: TextStyle(fontSize: 16.0)),
                ),
              ),
              SizedBox(height: 48.0),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 15.0),
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: Text('Sign in', style: TextStyle(fontSize: 16.0)),
                ),
              ),
              SizedBox(height: 48.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('New here ?', style: TextStyle(fontSize: 16.0)),
                  GestureDetector(
                    onTap: () {
                      context.router.push(SignUp());
                    },
                    child: Text(
                      'Sign up',
                      style: TextStyle(fontSize: 16.0, color: Colors.blue, decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Enter your email';
    }
    if (!value.contains('@')) {
      return 'Email must contain @ symbol';
    }
    return null;
  }

}
