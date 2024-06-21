import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:serverpod_saas_flutter/features/auth/providers/auth_service_provider.dart';

// Sets up a singleton client object that can be used to talk to the server from
// anywhere in our app. The client is generated from your server code.
// The client is set up to connect to a Serverpod running on a local server on
// the default port. You will need to modify this to connect to staging or
// production servers.

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Serverpod Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: Consumer(builder: (context, ref, child) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Button to Register'),
                ElevatedButton(
                  onPressed: () {
                    print('button clicked');
                    // ref.read(authServiceProvider).register(
                    //     userName: '123', email: '123@123.com', password: '123');
                    // ref.read(authServiceProvider).confirmUserRegister(
                    //     email: '123@123.com', verificationCode: 'InpxDMeh');
                  },
                  child: const Text('Test Register'),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
