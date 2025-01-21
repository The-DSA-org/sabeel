import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sabeel_app/features/azkar/data/azkar_model.dart';

part 'azkar_states.freezed.dart';


@freezed
class AzkarState with _$AzkarState {
  const factory AzkarState.initial() = _Initial;


  const factory AzkarState.loading() = Loading;
  const factory AzkarState.duaSuccess(List<AzkarModel> azkar) = DuaSuccess;
  const factory AzkarState.duaError(String errorMessage) = DuaError;

  const factory AzkarState.azkarSuccess(List<AzkarModel> azkar) = AzkarSuccess;
  const factory AzkarState.azkarError(String errorMessage) = AzkarError;
}
