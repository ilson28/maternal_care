import 'package:maternalcare/domain/repositories/user_repository.dart';
import 'package:maternalcare/data/datasources/firebase_user_service.dart';

class UserRepositoryImpl implements UserRepository {
  final FirebaseUserService remote;

  UserRepositoryImpl({required this.remote});

  @override
  Future<void> saveUserData({
    required String username,
    required int age,
    required int weeksGestation,
  }) async {
    await remote.saveUserData(
      username: username,
      age: age,
      weeksGestation: weeksGestation,
    );
  }

  @override
  Future<Map<String, dynamic>?> getUserData(String username) async {
    return await remote.getUserData(username);
  }
}
