import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:serverpod_auth_shared_flutter/serverpod_auth_shared_flutter.dart';

import 'package:serverpod_saas_flutter/core/providers/client_provider.dart';

part 'session_manager_provider.g.dart';

@Riverpod(keepAlive: true)
SessionManager sessionManager(SessionManagerRef ref) {
  return SessionManager(
    caller: ref.read(clientProvider).modules.auth,
  );
  ;
}
