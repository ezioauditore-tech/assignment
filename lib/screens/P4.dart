import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                      'Verification',
                      style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.w300),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 50,right: 50,bottom: 10),
              child: Text(
                'We have sent you a verification to your email ID',
                style: TextStyle(fontSize: 13,color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 140,bottom: 300),
              child: Text(
                'davidwalb@gmail.com',
                style: TextStyle(fontSize: 13,color: Colors.white),
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
                  'VERIFY',
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