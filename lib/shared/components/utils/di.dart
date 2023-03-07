import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:project/shared/network/remote/DioHelper.dart';

import '../../../cubit/login_cubit.dart';
import '../../../cubit/register_cubit.dart';
import '../../../data/data_source/remote_data_source.dart';
import '../../../repository/repository.dart';
import '../../../use_cases/login_usecase.dart';
import '../../../use_cases/register_usecase.dart';
import '../../network/remote/app_api.dart';
import 'package:project/data/repository/repository_impl.dart';

final instance = GetIt.instance;
Future<void> initAppModule() async {
  //cubit
  instance.registerFactory<RegisterCubit>(
      () => RegisterCubit(registerUseCase: instance.call()));

  instance.registerFactory<LoginCubit>(
      () => LoginCubit(loginUseCase: instance.call()));

  instance.registerFactory<DioHealper>(() => DioHealper());

  //app service client instance
  Dio dio = await instance<DioHealper>().getDio();
  instance.registerFactory<AppServiceClient>(() => AppServiceClient(dio));

  instance.registerFactory<RemoteDataSource>(
      () => RemoteDataSourceImpl(instance.call()));

  instance.registerFactory<Repository>(() => RepositoryImpl(instance.call()));

  instance.registerFactory<LoginUseCase>(() => LoginUseCase(instance.call()));

  instance.registerLazySingleton<RegisterUseCase>(
      () => RegisterUseCase(instance.call()));
}
