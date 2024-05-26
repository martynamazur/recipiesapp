import 'package:auto_route/annotations.dart';
import 'package:fetchingapi/domain/provider/user_provider.dart';
import 'package:fetchingapi/main.dart';
import 'package:fetchingapi/model/user.dart' as MyAppUser; // Użyj aliasu, np. MyAppUser
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/user.dart';

@RoutePage()
class SignUp extends ConsumerWidget {
  SignUp({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5), // Kolor tła
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Sign up', style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Your Email',
                hintText: 'hello@gmail.co',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  final email = emailController.text;
                  final name = nameController.text;
                  final password = passwordController.text;

                  ref.read(userRepositoryProvider).signUp(password,email,name);


                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15.0),
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: Text('Sign up'),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'By signing up you agree to our Terms of Use and Privacy Policy',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12.0),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {},
              child: Text(
                'Log In',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


}
