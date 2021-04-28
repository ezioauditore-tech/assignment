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
      home: Demo(),
    );
  }
}

class Demo extends StatefulWidget {
  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 0, 35, 1),
      appBar: null,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(padding: const EdgeInsets.only(top: 60),
                child: Center(
                  child: Text(
                    'PROFILE PICTURE',
                    style: TextStyle(color: Colors.white54, fontSize: 10),
                  ),
                )
            ),
            Padding(padding: const EdgeInsets.only(top: 10),
                child: CircleAvatar(
                    backgroundColor: Color.fromRGBO(0, 0, 85, 1),
                    radius: 45.0,
                    child: CircleAvatar(
                      backgroundColor: Color.fromRGBO(0, 0, 35, 1),
                      radius: 43.0,
                      child: new Icon(
                        Icons.photo_camera,
                        color: Colors.white,
                      ),
                    )
                )
            ),
            Padding(padding: const EdgeInsets.only(top: 30,right: 150),
                child: Center(
                  child: Text(
                    'GENDER',
                    style: TextStyle(color: Colors.white54, fontSize: 10),
                  ),
                )
            ),
            Padding(padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Padding(padding: const EdgeInsets.only(left: 100),
                    child: CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 23.0,
                      child:  Icon(Ionicons.md_male,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                  Padding(padding: const EdgeInsets.only(left: 30),
                    child: CircleAvatar(
                      backgroundColor: Colors.blueGrey.shade900,
                      radius: 23.0,
                      child:  Icon(Ionicons.md_female,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),

                  ),
                  Padding(padding: const EdgeInsets.only(left: 30),
                    child: CircleAvatar(
                      backgroundColor: Colors.blueGrey.shade900,
                      radius: 23.0,
                      child:  Icon(Ionicons.md_transgender,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                  Padding(padding: const EdgeInsets.only(left: 30),
                      child: Icon(Icons.done, color: Colors.white)),

                ],
              ),
            ),
            Padding(padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Padding(padding: const EdgeInsets.only(left: 110),
                      child: Text("MALE",style: TextStyle(color: Colors.white54, fontSize: 10),)
                  ),
                  Padding(padding: const EdgeInsets.only(left: 45),
                      child: Text("FEMALE",style: TextStyle(color: Colors.white54, fontSize: 10),)
                  ),
                  Padding(padding: const EdgeInsets.only(left: 40),
                      child: Text("OTHER",style: TextStyle(color: Colors.white54, fontSize: 10),)
                  ),
                ],
              ),
            ),
            Padding(padding: const EdgeInsets.only(top: 20,left: 50,right: 30),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    suffixIcon: IconButton(icon: Icon(Icons.done,color: Colors.white,)),
                    border: UnderlineInputBorder(),
                    labelText: 'USERNAME',
                    labelStyle: TextStyle(color: Colors.white54,fontSize: 13),
                    hintText: 'Enter UserName'),
              ),
            ),
            Padding(padding: const EdgeInsets.only(top: 20,left: 50,right: 30),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    suffixIcon: IconButton(icon: Icon(Icons.done,color: Colors.white,)),
                    border: UnderlineInputBorder(),
                    labelText: 'EMAIL',
                    labelStyle: TextStyle(color: Colors.white54,fontSize: 13),
                    hintText: 'Enter UserName'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 50.0, right: 30.0, top: 20, bottom: 0),
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
              padding: const EdgeInsets.only(
                  left: 50.0, right: 30.0, top: 20, bottom: 50),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                style: TextStyle(color: Colors.white),
                obscureText: true,
                decoration: InputDecoration(
                    suffixIcon: IconButton(icon: Icon(Entypo.cross,color: Colors.white,)),
                    border: UnderlineInputBorder(),
                    labelText: 'CONFIRM PASSWORD',
                    labelStyle: TextStyle(color: Colors.white54,fontSize: 13),
                    hintText: 'Enter secure password'),
              ),
            ),
            Container(
              height: 48,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: (){
                  // next screen
                },
                child: Text(
                  'CREATE ACCOUNT',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 110,top: 10,right: 90),
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