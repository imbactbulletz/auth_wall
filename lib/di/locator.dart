

import 'package:auth_wall/login/data/repository/SessionRepositoryImpl.dart';
import 'package:auth_wall/login/domain/repository/SessionRepository.dart';
import 'package:auth_wall/login/domain/usecase/IsUserLoggedInUseCase.dart';
import 'package:auth_wall/login/domain/usecase/LogInUserUsecase.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;

void setUpServiceLocator() {

    // Usecase
    serviceLocator.registerFactory<LoginUserUsecase>(
            () => LoginUserUsecase(serviceLocator.get<SessionRepository>())
    );

    serviceLocator.registerFactory<IsUserLoggedInUseCase>(
            () => IsUserLoggedInUseCase(serviceLocator.get<SessionRepository>())
    );

    // Repository
    serviceLocator.registerLazySingleton<SessionRepository>(
            () => SessionRepositoryImpl()
    );
}