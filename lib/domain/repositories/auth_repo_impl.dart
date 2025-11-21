import 'package:maternalcare/domain/repositories/auth_repository.dart';
import 'package:maternalcare/data/datasources/Auth_Services.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthService authService;

  AuthRepositoryImpl({required this.authService});

  @override
  Future<bool> login(String email, String password) async {
    final user = await authService.signIn(email, password);
    return user != null;
  }

  @override
  Future<bool> register(String email, String password) async {
    final user = await authService.register(email, password);
    return user != null;
  }

  @override
  Future<void> signOut() async {
    await authService.signOut();
  }
}
