import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:sabeel_app/core/networking/apis/adhan_api_service.dart';
import 'package:sabeel_app/features/home/data/repo/home_screen_repo.dart';
import 'package:sabeel_app/features/home/logic/home_screen_cubit.dart';
import 'package:sabeel_app/features/azkar/data/azkar_repo.dart';
import 'package:sabeel_app/features/azkar/logic/azkar_cubit.dart';
import 'package:sabeel_app/features/home_layout/logic/home_layout_cubit.dart';

import '../networking/dio_factory.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  Dio dio = DioFactory.getDio();

  //home layout
  getIt.registerFactory<HomeLayoutCubit>(()=>HomeLayoutCubit());

  //home screen
  getIt.registerLazySingleton<AdhanApiService>(()=>AdhanApiService(dio));
  getIt.registerLazySingleton<HomeScreenRepo>(()=>HomeScreenRepo(getIt()));
  getIt.registerFactory<HomeScreenCubit>(()=>HomeScreenCubit(getIt()));

  // Azkar
  getIt.registerLazySingleton<AzkarRepository>(() => AzkarRepository());
  getIt.registerFactory<AzkarCubit>(() => AzkarCubit(getIt<AzkarRepository>()));
}
