part of 'hadith_cubit.dart';

@freezed
class HadithState with _$HadithState {
  const factory HadithState.initial() = _Initial;
  const factory HadithState.hadithLoading() = HadithLoading;
  const factory HadithState.hadithSuccess(List<HadithModel> hadiths) =
      HadithSuccess;
  const factory HadithState.hadithError(ErrorHandler errorHandler) =
      HadithError;
}
