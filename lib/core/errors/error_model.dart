class ErrorModel {
  final int status;
  final String errorMessage;

  ErrorModel({this.status = 0, required this.errorMessage});
  factory ErrorModel.fromJson(Map jsonData) {
    return ErrorModel(
      errorMessage: jsonData["message"],
      status: jsonData["status"],
    );
  }
}
