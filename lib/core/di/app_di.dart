import 'package:maternalcare/data/datasources/Auth_Services.dart';
import 'package:maternalcare/data/datasources/firebase_user_service.dart';
import 'package:maternalcare/domain/repositories/auth_repo_impl.dart';
import 'package:maternalcare/domain/repositories/user_repo_impl.dart';

import 'package:maternalcare/domain/usecases/login_usecase.dart';
import 'package:maternalcare/domain/usecases/register_usecase.dart';
import 'package:maternalcare/domain/usecases/signout_usecase.dart';
import 'package:maternalcare/domain/usecases/save_user_data_usecase.dart';
import 'package:maternalcare/domain/usecases/get_user_data_usecase.dart';

import 'package:maternalcare/presentation/controllers/auth_controller.dart';
import 'package:maternalcare/presentation/controllers/user_controller.dart';

class AppDI {
  //===============
  // DATASOURCES
  //===============
  static final authDS = AuthService();
  static final userDS = FirebaseUserService();

  //===============
  // REPOSITORIES
  //===============
  static final authRepo = AuthRepositoryImpl(authService: authDS);
  static final userRepo = UserRepositoryImpl(remote: userDS);

  //===============
  // USECASES
  //===============
  static final loginUC = LoginUseCase(authRepo);
  static final registerUC = RegisterUseCase(authRepo);
  static final signoutUC = SignOutUseCase(authRepo);

  static final saveUserUC = SaveUserDataUseCase(userRepo);
  static final getUserUC = GetUserDataUseCase(userRepo);

  //===============
  // CONTROLLERS
  //===============
  static final authController = AuthController(
    loginUseCase: loginUC,
    registerUseCase: registerUC,
    signOutUseCase: signoutUC,
  );

  static final userController = UserController(
    saveUserDataUseCase: saveUserUC,
    getUserDataUseCase: getUserUC,
  );
}
