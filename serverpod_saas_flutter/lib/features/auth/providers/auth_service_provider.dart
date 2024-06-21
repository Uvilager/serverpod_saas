import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:serverpod_saas_flutter/core/providers/client_provider.dart';
import 'package:serverpod_saas_flutter/core/providers/session_manager_provider.dart';
import 'package:serverpod_saas_flutter/features/auth/services/auth_service.dart';

part 'auth_service_provider.g.dart';

@Riverpod(keepAlive: true)
AuthService authService(AuthServiceRef ref) {
  return AuthService(
    client: ref.read(clientProvider),
    sessionManager: ref.read(sessionManagerProvider),
  );
}
