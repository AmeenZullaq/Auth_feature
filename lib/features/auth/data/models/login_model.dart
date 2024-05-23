class LogInModel {
  final String mobileNumber;
  final String email;
  final String password;
  final bool? rememberMe;

  LogInModel({
    this.rememberMe,
    required this.mobileNumber,
    required this.email,
    required this.password,
  });

  factory LogInModel.fromJson(Map<String, dynamic> json) {
    return LogInModel(
      rememberMe: json[''],
      mobileNumber: json[''],
      email: json[''],
      password: json[''],
    );
  }
}
