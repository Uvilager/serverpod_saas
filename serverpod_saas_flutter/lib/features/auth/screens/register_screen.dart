import 'package:flutter/material.dart';
import 'package:serverpod_saas_flutter/features/auth/components/register_screen_form.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: RegisterScreenForm(),
        ),
      ),
    );
  }
}
