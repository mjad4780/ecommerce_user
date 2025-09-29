class Data {
  final int userId;
  final String userName;
  final String userEmail;
  final int userPhone;
  final bool userImprove;
  final String userCreate;
  final String password;

  Data({
    required this.userId,
    required this.userName,
    required this.userEmail,
    required this.userPhone,
    required this.userImprove,
    required this.userCreate,
    required this.password,
  });

  // تحويل JSON إلى Object
  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      userId: json['user_id'] ?? 0,
      userName: json['user_name'] ?? '',
      userEmail: json['user_email'] ?? '',
      userPhone: json['user_phone'] ?? 0,
      userImprove: json['user_improve'] ?? false,
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
      'user_improve': userImprove,
      'user_create': userCreate,
      'password': password,
    };
  }
}
