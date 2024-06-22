import 'package:fpdart/fpdart.dart';
import 'package:serverpod_auth_shared_flutter/serverpod_auth_shared_flutter.dart';
import 'package:serverpod_saas_client/serverpod_saas_client.dart';
import 'package:serverpod_auth_client/serverpod_auth_client.dart';

class AuthService {
  final SessionManager sessionManager;
  final Client client;
  AuthService({required this.client, required this.sessionManager});

  Future<Either<String, UserInfo>> login(
      {required String email, required String password}) async {
    try {
      final res = await client.modules.auth.email.authenticate(email, password);
      if (!res.success) {
        return const Left('Failed to login');
      }
      if (res.userInfo == null) {
        return const Left('User info null');
      }

      if (res.keyId == null) {
        return const Left('Key id null');
      }

      if (res.key == null) {
        return const Left('Key null');
      }
      print(res.userInfo);
      sessionManager.registerSignedInUser(res.userInfo!, res.keyId!, res.key!);
      return Right(res.userInfo!);
    } catch (e) {
      print(e);
      return Left(e.toString());
    }
  }

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
