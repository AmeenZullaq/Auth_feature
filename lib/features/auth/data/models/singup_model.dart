class SingUpModel {
  final String userName;
  final String mobileNumber;
  final String email;
  final String password;
  final String confirmPassword;

  SingUpModel({
    required this.userName,
    required this.mobileNumber,
    required this.email,
    required this.password,
    required this.confirmPassword,
  });

  factory SingUpModel.fromJson(Map<String, dynamic> json) {
    return SingUpModel(
      userName: json[''],
      mobileNumber: json[''],
      email: json[''],
      password: json[''],
      confirmPassword: json[''],
    );
  }
}
