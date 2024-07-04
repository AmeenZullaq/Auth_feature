class LogInModel {
  final String token;
  LogInModel({
    required this.token,
  });

  factory LogInModel.fromJson(Map<String, dynamic> json) {
    return LogInModel(
      token: json['access_token'],
    );
  }
}
