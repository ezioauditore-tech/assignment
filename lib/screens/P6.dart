import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginDemo(),
    );
  }
}

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 0, 35, 1),
      appBar: null,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Center(
                child: Container(
                    width: 200,
                    height: 200,
                    /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                    child: Image.asset('assets/logo.png')),
              ),
            ),
            Padding(padding: const EdgeInsets.only(top: 0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:50),
                    child: IconButton(icon: Icon(CupertinoIcons.arrow_left,color: Colors.white,size: 30,)),
                  ),
                  Padding(padding: EdgeInsets.only(left: 8),
                    child: Text(
                      'Reset password?',
                      style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.w300),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 20,right: 40,bottom: 10),
              child: Text(
                "E-mail address verified! Set a new password" ,
                style: TextStyle(fontSize: 13,color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 50.0, right: 30.0, top: 70, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                style: TextStyle(color: Colors.white),
                obscureText: true,
                decoration: InputDecoration(
                    suffixIcon: IconButton(icon: Icon(Icons.done,color: Colors.white,)),
                    border: UnderlineInputBorder(),
                    labelText: '  NEW PASSWORD',
                    labelStyle: TextStyle(color: Colors.white54,fontSize: 13),
                    hintText: 'Enter secure password'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 50.0, right: 30.0, top: 20, bottom: 100),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                style: TextStyle(color: Colors.white),
                obscureText: true,
                decoration: InputDecoration(
                    suffixIcon: IconButton(icon: Icon(Entypo.cross,color: Colors.white,)),
                    border: UnderlineInputBorder(),
                    labelText: 'RE-ENTER PASSWORD',
                    labelStyle: TextStyle(color: Colors.white54,fontSize: 13),
                    hintText: 'Enter secure password'),
              ),
            ),
            Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: (){
                  // next screen
                },
                child: Text(
                  'RESET PASSWORD',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 110,top: 30,right: 50),
                child: Row(
                  children: [
                    Text(
                      'Have an account?',
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                    FlatButton(
                      onPressed: (){
                        // next screen
                      },
                      child: Text(
                        'Log in',
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ),
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}