

import 'package:auth_wall/login/data/repository/SessionRepositoryImpl.dart';
import 'package:auth_wall/login/domain/repository/SessionRepository.dart';
import 'package:auth_wall/login/domain/usecase/LogInUserUsecase.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;

void setUpServiceLocator() {
    serviceLocator.registerLazySingleton<SessionRepository>(
            () => SessionRepositoryImpl()
    );

    serviceLocator.registerLazySingleton<LoginUserUsecase>(
            () => LoginUserUsecase(serviceLocator.get<SessionRepository>())
    );
}