import 'dart:async';
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                SecondScreen()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromRGBO(0, 0, 35, 1),
        child:Image(image: AssetImage('assets/logo.png'))

    );
  }
}
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 0, 35, 1),
      appBar: null,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 55),
              child: Center(
                child: Container(
                    width: 200,
                    height: 300,
                    /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                    child: Image.asset('assets/logo.png')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 50.0, right: 50.0, top: 20, bottom: 10),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    suffixIcon: IconButton(icon: Icon(Icons.done,color: Colors.white,)),
                    border: UnderlineInputBorder(),
                    labelText: 'EMAIL',
                    labelStyle: TextStyle(color: Colors.white54,fontSize: 13),
                    hintText: 'Enter valid email id as abc@gmail.com'),
              ),

            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 50.0, right: 50.0, top: 0, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                style: TextStyle(color: Colors.white),
                obscureText: true,
                decoration: InputDecoration(
                    suffixIcon: IconButton(icon: Icon(Icons.done,color: Colors.white,)),
                    border: UnderlineInputBorder(),
                    labelText: 'PASSWORD',
                    labelStyle: TextStyle(color: Colors.white54,fontSize: 13),
                    hintText: 'Enter secure password'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 170,bottom: 80),
              child: FlatButton(
                onPressed: (){
                  // next screen
                },
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.white54, fontSize: 13),
                ),
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
                  'LOG IN',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 70,top: 30,right: 90),
                child: Row(
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                    FlatButton(
                      onPressed: (){
                        // next screen
                      },
                      child: Text(
                        'Create one',
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
