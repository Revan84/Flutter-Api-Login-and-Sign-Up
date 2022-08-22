
import 'dart:async';

import 'package:admin_recolt/screens/login/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:admin_recolt/api/api_service.dart';
import 'package:admin_recolt/controllers/MenuController.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:admin_recolt/models/login_model.dart';
import 'package:admin_recolt/screens/main/main_screen.dart';
import '../../widgets/ProgressHUD.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool hidePassword = true;
  bool isApiCallProcess = false;
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  late LoginRequestModel loginRequestModel;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  
  @override
  void initState() {
    super.initState();
    loginRequestModel = new LoginRequestModel(email: '', password: '');
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
            Center(
              child:
              Image.asset("assets/images/logo.png", scale: 10),
            ),
            Center(
              child: 
              Text('Bienvenue dans l\'admin de Recolt\'',
              style: GoogleFonts.raleway(
                textStyle:TextStyle(
                  fontSize: 30,
                  color: Color(0xffEBDEC7),
                  ),
                ),
              textAlign: TextAlign.center,
              
              )
            ),
            Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
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
                          "Se connecter",
                          style: GoogleFonts.raleway(
                          textStyle: TextStyle(
                            color: Color(0xffDF9984),
                            fontWeight: FontWeight.w600,
                            fontSize: 48
                          ),
                          ),
                        ),
                        SizedBox(height: 20),
                        new TextFormField(
                          style:
                              TextStyle(color: Color(0xffDF9984)),
                          keyboardType: TextInputType.emailAddress,
                          onSaved: (input) => loginRequestModel.email = input!,
                          validator: (input) => !input!.contains('@')
                              ? "Email Id should be valid"
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
                              loginRequestModel.password = input!,
                          validator: (input) => input!.length < 3
                              ? "Password should be more than 3 characters"
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
                              print(loginRequestModel.toJson());

                              setState(() {
                                isApiCallProcess = true;
                              });

                              Login apiService = new Login();
                              apiService.login(loginRequestModel).then((value) {
                                if (value != null) {
                                  setState(() {
                                    isApiCallProcess = false;
                                  });

                                  if (value.token.isNotEmpty) {

                                    final snackBar = SnackBar(
                                        content: Text("Connexion réussie !"));
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
                            "Se connecter",
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
                            Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => SignupPage()), (Route<dynamic> route) => false);
                                  },
                           
                          child: Text(
                            "Pas de compte?",
                            style: TextStyle(color: Color(0xffDF9984)),
                          ),
                          color: Color(0xffFFF7EA),
                          shape: StadiumBorder(),
                        ),
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
