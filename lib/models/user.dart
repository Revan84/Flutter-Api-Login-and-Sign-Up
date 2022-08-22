class User{
  String email;
  String firstName;
  String lastName;
  String phone;
  String type;

  User(this.email, this.firstName, this.lastName, this.phone, this.type);

  User.fromJson(Map json):
          email=json['email'],
          firstName=json['firstName'],
          lastName=json['lastName'],
          phone=json['phone'],
          type=json['type'];
          
  Map toJson(){
    final Map<String, dynamic> data = <String, dynamic>{};
    return data;
  }

}
