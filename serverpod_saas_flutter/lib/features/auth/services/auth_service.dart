import 'package:fpdart/fpdart.dart';
import 'package:serverpod_auth_shared_flutter/serverpod_auth_shared_flutter.dart';
import 'package:serverpod_saas_client/serverpod_saas_client.dart';
import 'package:serverpod_auth_client/serverpod_auth_client.dart';

class AuthService {
  final SessionManager sessionManager;
  final Client client;
  AuthService({required this.client, required this.sessionManager});

  Future<Either<String, void>> register(
      {required String userName,
      required String email,
      required String password}) async {
    try {
      final res = await client.modules.auth.email
          .createAccountRequest(userName, email, password);
      print(res);
      if (!res) {
        return const Left('Failed to register');
      }
      return const Right(null);
    } catch (e) {
      print(e);
      return Left(e.toString());
    }
  }

  Future<Either<String, UserInfo>> confirmUserRegister(
      {required String email, required verificationCode}) async {
    try {
      final res = await client.modules.auth.email
          .createAccount(email, verificationCode);
      print(res);
      if (res == null) {
        return const Left('Failed to register');
      }
      return Right(res);
    } catch (e) {
      print(e);
      return Left(e.toString());
    }
  }
}
