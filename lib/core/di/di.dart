import 'package:get_it/get_it.dart';
import 'package:sabeel_app/features/home_layout/logic/home_layout_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  getIt.registerFactory<HomeLayoutCubit>(()=>HomeLayoutCubit());
}
