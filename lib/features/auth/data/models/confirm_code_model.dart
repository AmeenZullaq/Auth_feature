class ConfirmCodeModel {
  final String message;

  ConfirmCodeModel({required this.message});

  factory ConfirmCodeModel.fromJson(Map<String, dynamic> json) {
    return ConfirmCodeModel(message: json['message']);
  }
}
