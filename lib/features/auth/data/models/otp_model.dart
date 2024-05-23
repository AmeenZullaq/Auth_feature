class OtpModel {
  final String otpCode;
  final String email;

  OtpModel({
    required this.otpCode,
    required this.email,
  });

  factory OtpModel.fromJson(Map<String, dynamic> json) {
    return OtpModel(
      otpCode: json[''],
      email: json[''],
    );
  }
}
