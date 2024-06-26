class SendVerifyCodeModel {
  final String message;

  SendVerifyCodeModel({required this.message});

  factory SendVerifyCodeModel.fromJson(Map<String, dynamic> json) {
    return SendVerifyCodeModel(
      message: json['message'],
    );
  }
}
