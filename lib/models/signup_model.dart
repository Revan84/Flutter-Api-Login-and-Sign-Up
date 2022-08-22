class SignupResponseModel {
  final String token;
  final String error;

  SignupResponseModel({required this.token, required this.error});

  factory SignupResponseModel.fromJson(Map<String, dynamic> json) {
    return SignupResponseModel(
      token: json["token"] != null ? json["token"] : "",
      error: json["error"] != null ? json["error"] : "",
    );
  }
}

class SignupRequestModel {
  String email;
  String password;
  String firstName;
  String lastName;
  String phone;
  String type;

  SignupRequestModel({
    required this.email,
    required this.password,
    required this.firstName,
    required this.lastName,
    required this.phone,
    required this.type,
    
  });

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'email': email.trim(),
      'password': password.trim(),
      'firstName': firstName.trim(),
      'lastName': lastName.trim(),
      'phone': phone.trim(),
      'type': type.trim(),
      
    };

    return map;
  }
}
