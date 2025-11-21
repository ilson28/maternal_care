import '../repositories/user_repository.dart';

class GetUserDataUseCase {
  final UserRepository repository;

  GetUserDataUseCase(this.repository);

  Future<Map<String, dynamic>?> execute(String username) {
    return repository.getUserData(username);
  }
}
