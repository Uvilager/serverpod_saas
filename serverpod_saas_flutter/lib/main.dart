import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:serverpod_saas_flutter/core/routing/app_router.dart';
import 'package:serverpod_saas_flutter/features/auth/providers/auth_service_provider.dart';
import 'package:serverpod_saas_flutter/features/auth/screens/login_screen.dart';

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

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: 'Serverpod Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerConfig: ref.watch(goRouterProvider),
      // home: Scaffold(
      //   appBar: AppBar(),
      //   body: const LoginScreen(),
      //   // body: Consumer(
      //   //   builder: (context, ref, child) {
      //   //     return Center(
      //   //       child: Column(
      //   //         mainAxisAlignment: MainAxisAlignment.center,
      //   //         children: [
      //   //           const Text('Button to Register'),
      //   //           ElevatedButton(
      //   //             onPressed: () {
      //   //               print('button clicked');
      //   //               // ref.read(authServiceProvider).register(
      //   //               //     userName: '1234',
      //   //               //     email: '1234@1234.com',
      //   //               //     password: '1234');
      //   //               // ref.read(authServiceProvider).confirmUserRegister(
      //   //               //     email: '1234@1234.com', verificationCode: 'XnXT2I6E');
      //   //               final userInfo = ref
      //   //                   .read(authServiceProvider)
      //   //                   .login(email: '1234@1234.com', password: '1234');
      //   //               print('user info: $userInfo');
      //   //             },
      //   //             child: const Text('Test Register'),
      //   //           )
      //   //         ],
      //   //       ),
      //   //     );
      //   //   },
      //   // ),
      // ),
    );
  }
}
