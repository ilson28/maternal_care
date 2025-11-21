import '../repositories/user_repository.dart';

class SaveUserDataUseCase {
  final UserRepository repository;

  SaveUserDataUseCase(this.repository);

  Future<void> execute({
    required String username,
    required int age,
    required int weeksGestation,
  }) {
    return repository.saveUserData(
      username: username,
      age: age,
      weeksGestation: weeksGestation,
    );
  }
}
