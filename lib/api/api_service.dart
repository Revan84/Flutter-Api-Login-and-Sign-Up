import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/login_model.dart';
import '../models/signup_model.dart';
import 'package:admin_recolt/models/user.dart';

class Login {
  Future<LoginResponseModel> login(LoginRequestModel requestModel) async {
    String url = "http://localhost:8092/api/auth/login";
    final response = await http.post(Uri.parse(url),
    body: jsonEncode(requestModel),
    headers: {'Content-Type': 'application/json'},
    );
    if (response.statusCode == 200 || response.statusCode == 400) {
      return LoginResponseModel.fromJson(
        json.decode(response.body),
        
      );
      
    } else {
      throw Exception('Failed to load data!');
    }
  }
}
class Signup {
  Future<SignupResponseModel> signup(SignupRequestModel requestModel) async {
    String url = "http://localhost:8092/api/auth/register";
    final response = await http.post(Uri.parse(url),
    body: jsonEncode(requestModel),
    headers: {'Content-Type': 'application/json'},
    );
    if (response.statusCode == 201 || response.statusCode == 400) {
      return SignupResponseModel.fromJson(
        json.decode(response.body),
        
      );
      
    } else {
      throw Exception('Failed to load data!');
    }
  }
}

class GetUser extends StatefulWidget {
  final User? user;
  const GetUser({ Key? key, this.user});

  @override
  _GetUserState createState() => _GetUserState();
}
  
class _GetUserState extends State<GetUser> {
  List<User> user = [];
  Future<List<User>> getAll() async {
    var response = await http.get(Uri.parse("http://localhost:8092/api/users"));
  
    if(response.statusCode==200){
      user.clear();
    }
    var decodedData = jsonDecode(response.body);

    for (var u in decodedData) {
      user.add(User(u['email'], u['firstName'], u['lastName'], u['phone'], u['type']));
    }
    return user;
  }
@override
  Widget build(BuildContext context) {
    getAll();
    
     
    return Scaffold(
      body: 
     Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Bonjour'),
                      const SizedBox(height: 10,),                 
                    ],
                  ),
                ),
                // height: 455 ,
                width:  MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                   color: Color(0xffFFFFFF),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0,1),

                    ),
                  ]
                ),
                
              ),
    );
  }
}