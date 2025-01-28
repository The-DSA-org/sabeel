import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sabeel_app/features/azkar/data/azkar_repo.dart';
import 'package:sabeel_app/features/azkar/logic/azkar_states.dart';


class AzkarCubit extends Cubit<AzkarState> {
  final AzkarRepository repository;

  AzkarCubit(this.repository) : super(const AzkarState.initial());


  void loadDua() async {
    emit(const AzkarState.loading());
    try {
      final dua = await repository.loadDuas();
      emit(AzkarState.duaSuccess(dua));
    } catch (e) {
      emit(AzkarState.duaError(e.toString()));
    }
  }

  void loadAzkar() async {
    emit(const AzkarState.loading());
    try {
      final remembrances = await repository.loadRemembrances();
      emit(AzkarState.azkarSuccess(remembrances));
    } catch (e) {
      emit(AzkarState.azkarError(e.toString()));
    }
  }
}
