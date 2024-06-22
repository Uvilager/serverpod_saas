import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_server/serverpod_auth_server.dart';
import 'package:serverpod_saas_server/src/generated/user.dart';

class UserEndpoint extends Endpoint {
  Future<User?> me(Session session) async {
    final authenticationInfo = await session.authenticated;
    if (authenticationInfo != null) {
      final me = User.db.findFirstRow(
        session,
        where: (t) => t.id.equals(authenticationInfo.userId),
        include: User.include(
          userInfo: UserInfo.include(),
        ),
      );
      return me;
    }
    print('User is not authenticated');
    return null;
  }
}
