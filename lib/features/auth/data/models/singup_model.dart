class SingUpModel {
  final String message;
  final String token;

  SingUpModel({
    required this.message,
    required this.token,
  });

  factory SingUpModel.fromJson(Map<String, dynamic> json) {
    return SingUpModel(
      message: json['message'],
      token: json['token'],
    );
  }
}
