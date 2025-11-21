import 'package:maternalcare/domain/usecases/login_usecase.dart';
import 'package:maternalcare/domain/usecases/register_usecase.dart';
import 'package:maternalcare/domain/usecases/signout_usecase.dart';

class AuthController {
  final LoginUseCase loginUseCase;
  final RegisterUseCase registerUseCase;
  final SignOutUseCase signOutUseCase;

  AuthController({
    required this.loginUseCase,
    required this.registerUseCase,
    required this.signOutUseCase,
  });

  Future<bool?> login(String email, String password) async {
    return await loginUseCase.execute(email, password);
  }

  Future<bool?> register(String email, String password) async {
    return await registerUseCase.execute(email, password);
  }

  Future<void> logout() async {
    await signOutUseCase.execute();
  }
}
