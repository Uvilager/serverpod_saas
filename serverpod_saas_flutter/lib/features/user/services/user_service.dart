import 'package:fpdart/fpdart.dart';
import 'package:serverpod_saas_client/serverpod_saas_client.dart';

class UserService {
  final Client client;

  UserService(this.client);

  Future<Either<String, User?>> me() async {
    try {
      final user = await client.user.me();
      if (user == null) {
        return const Left('User is not authenticated');
      }
      print(user);
      return Right(user);
    } catch (e) {
      return Left(e.toString());
    }
  }
}
