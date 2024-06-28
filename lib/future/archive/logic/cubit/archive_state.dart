import 'package:ecommerce_user/model/pending_response/pending_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'archive_state.freezed.dart';

@freezed
class ArchiveState with _$ArchiveState {
  const factory ArchiveState.initial() = _Initial;
  const factory ArchiveState.loading() = Loading;
  const factory ArchiveState.success(
      {required PendingResponse pendingResponse}) = Success;
  const factory ArchiveState.erorr({required String erorr}) = Erorr;

  ///:rating
  const factory ArchiveState.loadingRating() = LoadingRating;
  const factory ArchiveState.successRating() = SuccessRating;
  const factory ArchiveState.erorrRating({required String erorr}) = ErorrRating;
}
