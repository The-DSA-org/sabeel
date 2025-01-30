import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sabeel_app/core/networking/api_error_handler.dart';
import 'package:sabeel_app/features/hadith/data/hadith_model.dart';
import 'package:sabeel_app/features/hadith/data/hadith_repo.dart';

part 'hadith_cubit.freezed.dart';
part 'hadith_state.dart';

class HadithCubit extends Cubit<HadithState> {
  final HadithRepo _hadithRepo;
  HadithCubit(this._hadithRepo) : super(HadithState.initial());

  void getAllHadiths() async {
    emit(const HadithState.hadithLoading());
    try {
      final apiResult = await _hadithRepo.fetchAllHadiths();
      apiResult.when(
        success: (hadithList) {
          emit(HadithState.hadithSuccess(hadithList));
        },
        failure: (errorHandler) {
          emit(HadithState.hadithError(errorHandler));
        },
      );
    } catch (error) {
      emit(HadithState.hadithError(
          ErrorHandler.handle('An error occurred while fetching hadiths')));
    }
  }
}
