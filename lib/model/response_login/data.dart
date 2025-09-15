class Data {
  final int userId;
  final String userName;
  final String userEmail;
  final int userPhone;
  final int userVeryMyCode;
  final int userImprove;
  final String userCreate;
  final String password;

  Data({
    required this.userId,
    required this.userName,
    required this.userEmail,
    required this.userPhone,
    required this.userVeryMyCode,
    required this.userImprove,
    required this.userCreate,
    required this.password,
  });

  // تحويل JSON إلى Object
  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      userId: json['user_id'] ?? '',
      userName: json['user_name'] ?? '',
      userEmail: json['user_email'] ?? '',
      userPhone: json['user_phone'] ?? '',
      userVeryMyCode: json['user_verymycode'] ?? '',
      userImprove: json['user_improve'] ?? '',
      userCreate: json['user_create'] ?? '',
      password: json['password'] ?? '',
    );
  }

  // تحويل Object إلى JSON
  Map<String, dynamic> toJson() {
    return {
      'user_id': userId,
      'user_name': userName,
      'user_email': userEmail,
      'user_phone': userPhone,
      'user_verymycode': userVeryMyCode,
      'user_improve': userImprove,
      'user_create': userCreate,
      'password': password,
    };
  }
}
