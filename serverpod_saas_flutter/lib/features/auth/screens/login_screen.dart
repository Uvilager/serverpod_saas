import 'package:flutter/material.dart';
import 'package:serverpod_saas_flutter/features/auth/components/login_screen_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: LoginScreenForm(),
        ),
      ),
    );
  }
}
