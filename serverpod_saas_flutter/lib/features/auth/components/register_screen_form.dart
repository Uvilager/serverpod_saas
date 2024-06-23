import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RegisterScreenForm extends ConsumerStatefulWidget {
  const RegisterScreenForm({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _RegisterScreenFormState();
}

class _RegisterScreenFormState extends ConsumerState<RegisterScreenForm> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          const SizedBox(height: 30),
          TextFormField(
            controller: usernameController,
            decoration: const InputDecoration(
              labelText: 'Username',
            ),
          ),
          const SizedBox(height: 20),
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
              print('Register button clicked');
              if (_formKey.currentState!.validate()) {
                // Perform login logic here
              }
            },
            child: const Text('Register'),
          )
        ],
      ),
    );
  }
}
