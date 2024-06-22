import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:serverpod_saas_flutter/core/providers/client_provider.dart';
import 'package:serverpod_saas_flutter/features/user/services/user_service.dart';

part 'user_provider.g.dart';

@riverpod
UserService userService(UserServiceRef ref) {
  return UserService(
    ref.read(clientProvider),
  );
}
