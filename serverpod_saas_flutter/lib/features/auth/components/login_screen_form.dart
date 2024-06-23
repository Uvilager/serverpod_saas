import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class LoginScreenForm extends ConsumerStatefulWidget {
  const LoginScreenForm({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _LoginScreenFormState();
}

class _LoginScreenFormState extends ConsumerState<LoginScreenForm> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          const SizedBox(height: 30),
          TextFormField(
            controller: emailController,
            decoration: const InputDecoration(
              labelText: 'Email',
            ),
          ),
          const SizedBox(height: 20),
          TextFormField(
            controller: passwordController,
            obscureText: true,
            decoration: const InputDecoration(
              labelText: 'Password',
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              print('Login button clicked');
              if (_formKey.currentState!.validate()) {
                // Perform login logic here
              }
            },
            child: const Text('Login'),
          ),
          TextButton(
            onPressed: () {
              context.go('/register');
              print('Sign Up button pressed');
            },
            child: const Text('Not registered? Sign Up'),
          ),
        ],
      ),
    );
  }
}
