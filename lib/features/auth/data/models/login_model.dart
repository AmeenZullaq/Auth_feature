class LogInModel {
  final String message;
  LogInModel({
    required this.message,
  });

  factory LogInModel.fromJson(Map<String, dynamic> json) {
    return LogInModel(
      message: json['message'],
    );
  }
}
