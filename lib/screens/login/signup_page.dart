

import 'dart:async';

import 'package:admin_recolt/api/api_service.dart';
import 'package:admin_recolt/screens/login/login_page.dart';
import 'package:admin_recolt/widgets/ProgressHUD.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:admin_recolt/models/login_model.dart';
import 'package:provider/provider.dart';

import '../../controllers/MenuController.dart';
import '../../models/signup_model.dart';
import '../main/main_screen.dart';


class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool hidePassword = true;
  bool isApiCallProcess = false;
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  late LoginRequestModel loginRequestModel;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  FocusNode focusNode = FocusNode();
  late SignupRequestModel signupRequestModel;
  @override
  void initState() {
    super.initState();
    signupRequestModel = new SignupRequestModel(
      email: '', password: '',firstName: '',lastName: '',type: '',phone: '');
  }
  @override
  Widget build(BuildContext context) {
    return ProgressHUD(
      child: _uiSetup(context),
      inAsyncCall: isApiCallProcess,
      opacity: 0.3,valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
    );
  }

  Widget _uiSetup(BuildContext context) {
    MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => MenuController(),
          ),
        ],
        
      );
    return Scaffold(
     
      key: scaffoldKey,
      backgroundColor: Color(0xff527E67),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                  margin: EdgeInsets.symmetric(vertical: 35, horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffEBDEC7),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          offset: Offset(0, 30),
                          blurRadius: 20)
                    ],
                  ),
                  child: Form(
                    key: globalFormKey,
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 25),
                        Text(
                          "S'inscrire",
                          style: GoogleFonts.raleway(
                          textStyle: TextStyle(
                            color: Color(0xffDF9984),
                            fontWeight: FontWeight.w700,
                            fontSize: 38
                          ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        new TextFormField(
                          style:
                              TextStyle(color: Color(0xffDF9984)),
                          keyboardType: TextInputType.name,
                          onSaved: (input) => signupRequestModel.firstName = input!,
                          validator: (input) => !input!.contains(RegExp(r'[a-z]'))
                              ? "Le nom doit être valide"
                              : null,
                          decoration: new InputDecoration(
                            hintStyle: TextStyle(color: Color(0xffDF9984)),
                            hintText: "Nom",
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xffDF9984)
                                        
                                        )),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xffDF9984))),
                            prefixIcon: Icon(
                              Icons.person,
                              color: Color(0xffDF9984),
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        new TextFormField(
                          style:
                              TextStyle(color: Color(0xffDF9984)),
                          keyboardType: TextInputType.name,
                          onSaved: (input) => signupRequestModel.lastName = input!,
                          validator: (input) => !input!.contains(RegExp(r'[A-Z]'))
                              ? "Le prénom doit être valide"
                              : null,
                          decoration: new InputDecoration(
                            hintStyle: TextStyle(color: Color(0xffDF9984)),
                            hintText: "Prénom",
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xffDF9984)
                                        
                                        )),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xffDF9984))),
                            prefixIcon: Icon(
                              Icons.person_outlined,
                              color: Color(0xffDF9984),
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        new TextFormField(
                          style:
                              TextStyle(color: Color(0xffDF9984)),
                          keyboardType: TextInputType.phone,
                          onSaved: (input) => signupRequestModel.phone = input!,
                          validator: (input) => !input!.contains(RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$'))
                              ? "Le numéro de téléphone doit être valide"
                              : null,
                          decoration: new InputDecoration(
                            hintStyle: TextStyle(color: Color(0xffDF9984)),
                            hintText: "Mobile",
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xffDF9984)
                                        
                                        )),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xffDF9984))),
                            prefixIcon: Icon(
                              Icons.phone,
                              color: Color(0xffDF9984),
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        new DropdownButtonFormField<String>(
                          onSaved: (input) => signupRequestModel.type = input!,
                          
                          focusNode: focusNode,
                          borderRadius: BorderRadius.circular(15),
                          focusColor: Color(0xffDF9984),
                          style: GoogleFonts.poppins(textStyle:TextStyle(fontSize: 16,color:Color(0xffDF9984),),),
                          dropdownColor: Color(0xffEBDEC7),
                          iconEnabledColor: Color(0xffDF9984),
                          iconDisabledColor: Color(0xffDF9984),
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xffDF9984)
                                        )),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xffDF9984)
                                        )),
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xffDF9984)
                                        )),
                            iconColor: Color(0xffDF9984),
                            prefixIconColor: Color(0xffDF9984),
                            hintStyle: TextStyle(color: Color(0xffDF9984)),
                            prefixIcon: Icon(Icons.person,color: Color(0xffDF9984),),
                            fillColor: Color(0xffDF9984),
                          ),
                          
                          hint: Text('Choisissez le type de compte',
                          style: TextStyle(color: Color(0xffDF9984)),),
                          items: <String>['productor', 'collaborator', 'harvester'].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value, style: TextStyle(color: Color(0xffDF9984)),),
                          );
                          }).toList(),
                          onChanged: (_) {},
                        ),
                        SizedBox(height: 20),
                        new TextFormField(
                          style:
                              TextStyle(color: Color(0xffDF9984)),
                          keyboardType: TextInputType.emailAddress,
                          onSaved: (input) => signupRequestModel.email = input!,
                          validator: (input) => !input!.contains('@')
                              ? "L'adresse e-mail doit être valide"
                              : null,
                          decoration: new InputDecoration(
                            hintStyle: TextStyle(color: Color(0xffDF9984)),
                            hintText: "Adresse e-mail",
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xffDF9984)
                                        
                                        )),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xffDF9984))),
                            prefixIcon: Icon(
                              Icons.email,
                              color: Color(0xffDF9984),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        new TextFormField(
                          style:
                              TextStyle(color: Color(0xffDF9984)),
                          keyboardType: TextInputType.text,
                          onSaved: (input) =>
                              signupRequestModel.password = input!,
                          validator: (input) => input!.length < 3
                              ? "Le mot de passe doit être à plus de trois caractères"
                              : null,
                          obscureText: hidePassword,
                          decoration: new InputDecoration(
                            hintStyle: TextStyle(color: Color(0xffDF9984)),
                            hintText: "Mot de passe",
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xffDF9984))),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xffDF9984))),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Color(0xffDF9984),
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  hidePassword = !hidePassword;
                                });
                              },
                              color: Color(0xffDF9984),
                              icon: Icon(hidePassword
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        FlatButton(
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 80),
                          onPressed: () {
                            if (validateAndSave()) {
                              print(signupRequestModel.toJson());

                              setState(() {
                                isApiCallProcess = true;
                              });

                              Signup apiService = new Signup();
                              apiService.signup(signupRequestModel).then((value) {
                                if (value != null) {
                                  setState(() {
                                    isApiCallProcess = false;
                                  });

                                  if (value.token.isNotEmpty) {

                                    final snackBar = SnackBar(
                                        content: Text("Inscription Réussie !"));
                                    scaffoldKey.currentState!
                                        .showSnackBar(snackBar);
                                        Timer(Duration(seconds: 2), () {
                                          Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => MainScreen()), (Route<dynamic> route) => false);
                                        });
                                  } else {
                                    final snackBar =
                                        SnackBar(content: Text(value.error));
                                    scaffoldKey.currentState!
                                        .showSnackBar(snackBar);
                                  }
                                }
                              });
                            }
                          },
                          child: Text(
                            "S'inscrire",
                            style: TextStyle(color: Color(0xffFDF2E1)),
                          ),
                          color: Color(0xffDF9984),
                          shape: StadiumBorder(),
                        ),
                        SizedBox(height: 15),
                        FlatButton(
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 80),
                          onPressed: () {
                            Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => LoginPage()), (Route<dynamic> route) => false);
                                  },
                           
                          child: Text(
                            "Déjà un compte ?",
                            style: TextStyle(color: Color(0xffDF9984)),
                          ),
                          color: Color(0xffFDF2E1),
                          shape: StadiumBorder(),
                        ),
                        SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
bool validateAndSave() {
    final form = globalFormKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    }
    return false;
  }
}
