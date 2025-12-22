class ResponseLogin {
  final String? status;
  final String? message;
  final LoginData? data;

  ResponseLogin({this.status, this.message, this.data});

  factory ResponseLogin.fromJson(Map<String, dynamic> json) => ResponseLogin(
        status: json['status'],
        message: json['message'],
        data: json['data'] != null ? LoginData.fromJson(json['data']) : null,
      );

  Map<String, dynamic> toJson() => {
        'status': status,
        'message': message,
        'data': data?.toJson(),
      };
}

class LoginData {
  final User? user;
  final Session? session;

  LoginData({this.user, this.session});

  factory LoginData.fromJson(Map<String, dynamic> json) => LoginData(
        user: json['user'] != null ? User.fromJson(json['user']) : null,
        session:
            json['session'] != null ? Session.fromJson(json['session']) : null,
      );

  Map<String, dynamic> toJson() => {
        'user': user?.toJson(),
        'session': session?.toJson(),
      };
}

class Session {
  final String? accessToken;
  final String? tokenType;
  final int? expiresIn;
  final int? expiresAt;
  final String? refreshToken;
  final User? user;
  final dynamic weakPassword;

  Session({
    this.accessToken,
    this.tokenType,
    this.expiresIn,
    this.expiresAt,
    this.refreshToken,
    this.user,
    this.weakPassword,
  });

  factory Session.fromJson(Map<String, dynamic> json) => Session(
        accessToken: json['access_token'],
        tokenType: json['token_type'],
        expiresIn: json['expires_in'],
        expiresAt: json['expires_at'],
        refreshToken: json['refresh_token'],
        user: json['user'] != null ? User.fromJson(json['user']) : null,
        weakPassword: json['weak_password'],
      );

  Map<String, dynamic> toJson() => {
        'access_token': accessToken,
        'token_type': tokenType,
        'expires_in': expiresIn,
        'expires_at': expiresAt,
        'refresh_token': refreshToken,
        'user': user?.toJson(),
        'weak_password': weakPassword,
      };
}

class User {
  final String? id;
  final String? aud;
  final String? role;
  final String? email;
  final String? emailConfirmedAt;
  final String? phone;
  final String? confirmationSentAt;
  final String? confirmedAt;
  final String? lastSignInAt;
  final AppMetadata? appMetadata;
  final UserMetadata? userMetadata;
  final List<Identity>? identities;
  final String? createdAt;
  final String? updatedAt;
  final bool? isAnonymous;

  User({
    this.id,
    this.aud,
    this.role,
    this.email,
    this.emailConfirmedAt,
    this.phone,
    this.confirmationSentAt,
    this.confirmedAt,
    this.lastSignInAt,
    this.appMetadata,
    this.userMetadata,
    this.identities,
    this.createdAt,
    this.updatedAt,
    this.isAnonymous,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json['id'],
        aud: json['aud'],
        role: json['role'],
        email: json['email'],
        emailConfirmedAt: json['email_confirmed_at'],
        phone: json['phone'],
        confirmationSentAt: json['confirmation_sent_at'],
        confirmedAt: json['confirmed_at'],
        lastSignInAt: json['last_sign_in_at'],
        appMetadata: json['app_metadata'] != null
            ? AppMetadata.fromJson(json['app_metadata'])
            : null,
        userMetadata: json['user_metadata'] != null
            ? UserMetadata.fromJson(json['user_metadata'])
            : null,
        identities: json['identities'] != null
            ? List<Identity>.from(
                json['identities'].map((x) => Identity.fromJson(x)))
            : null,
        createdAt: json['created_at'],
        updatedAt: json['updated_at'],
        isAnonymous: json['is_anonymous'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'aud': aud,
        'role': role,
        'email': email,
        'email_confirmed_at': emailConfirmedAt,
        'phone': phone,
        'confirmation_sent_at': confirmationSentAt,
        'confirmed_at': confirmedAt,
        'last_sign_in_at': lastSignInAt,
        'app_metadata': appMetadata?.toJson(),
        'user_metadata': userMetadata?.toJson(),
        'identities': identities?.map((x) => x.toJson()).toList(),
        'created_at': createdAt,
        'updated_at': updatedAt,
        'is_anonymous': isAnonymous,
      };
}

class AppMetadata {
  final String? provider;
  final List<String>? providers;

  AppMetadata({this.provider, this.providers});

  factory AppMetadata.fromJson(Map<String, dynamic> json) => AppMetadata(
        provider: json['provider'],
        providers: json['providers'] != null
            ? List<String>.from(json['providers'])
            : null,
      );

  Map<String, dynamic> toJson() => {
        'provider': provider,
        'providers': providers,
      };
}

class UserMetadata {
  final String? email;
  final bool? emailVerified;
  final String? phone;
  final bool? phoneVerified;
  final String? sub;
  final String? username;

  UserMetadata({
    this.email,
    this.emailVerified,
    this.phone,
    this.phoneVerified,
    this.sub,
    this.username,
  });

  factory UserMetadata.fromJson(Map<String, dynamic> json) => UserMetadata(
        email: json['email'],
        emailVerified: json['email_verified'],
        phone: json['phone'],
        phoneVerified: json['phone_verified'],
        sub: json['sub'],
        username: json['username'],
      );

  Map<String, dynamic> toJson() => {
        'email': email,
        'email_verified': emailVerified,
        'phone': phone,
        'phone_verified': phoneVerified,
        'sub': sub,
        'username': username,
      };
}

class Identity {
  final String? identityId;
  final String? id;
  final String? userId;
  final IdentityData? identityData;
  final String? provider;
  final String? lastSignInAt;
  final String? createdAt;
  final String? updatedAt;
  final String? email;

  Identity({
    this.identityId,
    this.id,
    this.userId,
    this.identityData,
    this.provider,
    this.lastSignInAt,
    this.createdAt,
    this.updatedAt,
    this.email,
  });

  factory Identity.fromJson(Map<String, dynamic> json) => Identity(
        identityId: json['identity_id'],
        id: json['id'],
        userId: json['user_id'],
        identityData: json['identity_data'] != null
            ? IdentityData.fromJson(json['identity_data'])
            : null,
        provider: json['provider'],
        lastSignInAt: json['last_sign_in_at'],
        createdAt: json['created_at'],
        updatedAt: json['updated_at'],
        email: json['email'],
      );

  Map<String, dynamic> toJson() => {
        'identity_id': identityId,
        'id': id,
        'user_id': userId,
        'identity_data': identityData?.toJson(),
        'provider': provider,
        'last_sign_in_at': lastSignInAt,
        'created_at': createdAt,
        'updated_at': updatedAt,
        'email': email,
      };
}

class IdentityData {
  final String? email;
  final bool? emailVerified;
  final String? phone;
  final bool? phoneVerified;
  final String? sub;
  final String? username;

  IdentityData({
    this.email,
    this.emailVerified,
    this.phone,
    this.phoneVerified,
    this.sub,
    this.username,
  });

  factory IdentityData.fromJson(Map<String, dynamic> json) => IdentityData(
        email: json['email'],
        emailVerified: json['email_verified'],
        phone: json['phone'],
        phoneVerified: json['phone_verified'],
        sub: json['sub'],
        username: json['username'],
      );

  Map<String, dynamic> toJson() => {
        'email': email,
        'email_verified': emailVerified,
        'phone': phone,
        'phone_verified': phoneVerified,
        'sub': sub,
        'username': username,
      };
}
