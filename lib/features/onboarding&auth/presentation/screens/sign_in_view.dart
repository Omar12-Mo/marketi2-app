import 'package:flutter/material.dart';
import 'package:testapp/generated/assets.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50),
            Image.asset(Assets.logeLogoLogIn),
            SizedBox(height: 32,),
            
          ],
        ),
      ),
    );
  }
}
