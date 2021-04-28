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
  _LoginDemo createState() => _LoginDemo();
}

class _LoginDemo extends State<LoginDemo> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        color: Colors.white,
        child: new ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                new Container(
                  height: 250.0,
                  color: Colors.white,
                  child: new Column(
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.only(left: 20.0, top: 20.0),
                          child: new Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new Icon(
                                Icons.arrow_back_outlined,
                                color: Colors.black,
                                size: 22.0,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20.0),
                                child: new Text('PROFILE',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        fontFamily: 'sans-serif-light',
                                        color: Colors.black)),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(left: 120),
                                  child: new Text("LOG OUT",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18.0
                                      ))
                              )
                            ],
                          )),
                      Padding(
                        padding: EdgeInsets.only(top: 20.0),
                        child: new Stack(fit: StackFit.loose, children: <Widget>[
                          new Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              new Container(
                                  width: 150.0,
                                  height: 150.0,
                                  decoration: new BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: new DecorationImage(
                                      image: new AssetImage(
                                          'assets/photo.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  )),
                            ],
                          ),
                        ]),
                      )
                    ],
                  ),
                ),
                new Container(
                  color: Color(0xffFFFFFF),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 10.0),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: new Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 100.0),
                                  child: new Text('Ariana Grande',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.0,
                                          fontFamily: 'sans-serif-light',
                                          color: Colors.black)),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: new Icon(
                                    Icons.edit,
                                    color: Colors.black,
                                    size: 15.0,
                                  ),
                                )
                              ],
                            )),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        onTap: null,
      ),
    );

  }

}
