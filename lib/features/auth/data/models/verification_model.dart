class VerificationModel {
  final String otpCode;

  VerificationModel({
    required this.otpCode,
  });

  factory VerificationModel.fromJson(Map<String, dynamic> json) {
    return VerificationModel(
      otpCode: json[''],
    );
  }
}
