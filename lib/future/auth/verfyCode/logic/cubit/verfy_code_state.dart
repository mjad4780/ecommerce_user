import 'package:freezed_annotation/freezed_annotation.dart';

part 'verfy_code_state.freezed.dart';

@freezed
class VerfyCodeState with _$VerfyCodeState {
  const factory VerfyCodeState.initial() = _Initial;

  ///:veryfycode
  const factory VerfyCodeState.loadingveryfyCode() = LoadingveryfyCode;
  const factory VerfyCodeState.successVerfyCode() = SuccessVerfyCode;
  const factory VerfyCodeState.erorrVerfycode({required String erorr}) =
      ErorrVerfycode;

  ///:sendveryfycode
  const factory VerfyCodeState.loadingSend() = LoadingSend;
  const factory VerfyCodeState.successSend() = SuccessSend;
  const factory VerfyCodeState.erorrSend({required String erorr}) = ErorrSend;
}
