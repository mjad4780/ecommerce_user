import '../class/StatusReqest.dart';

handingdata(response) {
  if (response is StatusReqest) {
    return response;
  } else {
    return StatusReqest.success;
  }
}
