import 'package:maternalcare/domain/usecases/save_user_data_usecase.dart';
import 'package:maternalcare/domain/usecases/get_user_data_usecase.dart';

class UserController {
  final SaveUserDataUseCase saveUserDataUseCase;
  final GetUserDataUseCase getUserDataUseCase;

  UserController({
    required this.saveUserDataUseCase,
    required this.getUserDataUseCase,
  });

  Future<void> saveUser({
    required String username,
    required int age,
    required int weeksGestation,
  }) async {
    await saveUserDataUseCase.execute(
      username: username,
      age: age,
      weeksGestation: weeksGestation,
    );
  }

  Future<Map<String, dynamic>?> getUser(String username) {
    return getUserDataUseCase.execute(username);
  }
}
