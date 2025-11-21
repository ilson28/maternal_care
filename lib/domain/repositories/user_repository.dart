abstract class UserRepository {
  Future<void> saveUserData({
    required String username,
    required int age,
    required int weeksGestation,
  });

  Future<Map<String, dynamic>?> getUserData(String username);
}
