import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:flutter_icons/flutter_icons.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

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
  int index = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 0, 35, 1),
      appBar: null,
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 120,
                width: 400,
                color: Color.fromRGBO(0, 0, 65, 1),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 20),
                      child: Container(
                          width: 65.0,
                          height: 65.0,
                          decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                              image: new AssetImage('assets/photo.jpg'),
                              fit: BoxFit.cover,
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 20),
                      child: Text(
                        "Elena",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w300),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 0, top: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          _Triangle(
                            color: Color.fromRGBO(0, 0, 90, 1),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        height: 120,
                        width: 145,
                        color: Color.fromRGBO(0, 0, 90, 1),
                        child: Row(
                          children: [
                            Container(
                              height: 120,
                              width: 60,
                              child: Column(
                                children: [
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(left: 10, top: 30),
                                    child: Text(
                                      "Points",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 11),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(left: 10, top: 5),
                                    child: Text(
                                      "40",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 20),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: CircularPercentIndicator(
                                radius: 60.0,
                                lineWidth: 3.0,
                                percent: 0.4,
                                center: Image(
                                  image: AssetImage('assets/logo.png'),
                                ),
                                backgroundColor: Color.fromRGBO(0, 0, 35, 1),
                                progressColor: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  height: 50,
                  width: 400,
                  color: Color.fromRGBO(0, 0, 35, 1),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30, top: 20),
                    child: Text(
                      "NEWS",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 15),
                    ),
                  )),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
                height: MediaQuery.of(context).size.height * 0.7,
                width: size.width,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8.0,
                          vertical: 37,
                        ),
                        child: Container(
                          height: size.height / 1.5,
                          width: size.width / 1.4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromRGBO(8, 13, 19, 1),
                                  Color.fromRGBO(8, 13, 19, 1),
                                  Color.fromRGBO(8, 13, 19, 1),
                                  Color.fromRGBO(8, 13, 19, 1),
                                ],
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight,
                              )),
                          alignment: Alignment.center,
                          child: Container(
                            height: size.height / 1.88,
                            width: size.width / 1.43,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue,
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: size.height / 2.705,
                                  width: size.width / 1.5,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('assets/selena.jpg',),
                                      )),
                                ),
                                SizedBox(
                                  height: size.height / 20,
                                ),
                                Container(
                                  height: size.height / 8.95,
                                  width: size.width / 1.2,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(11, 24, 29, 1),
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20),
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: size.height / 18,
                                        width: size.width / 1.6,
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Lorem ipsum",
                                          style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: size.height / 25,
                                        width: size.width / 1.6,
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "Lorem ipsum dolor sit amet, consectetur",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ],
          )),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromRGBO(0, 0, 35, 1),
        currentIndex: index,
        onTap: (int index) {
          setState(() {
            this.index = index;
          });
        },
        selectedItemColor: Colors.pinkAccent,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_scanner_outlined, color: Colors.white),
            label: 'QR',
          ),
          BottomNavigationBarItem(
            icon: Icon(FlutterIcons.trophy_variant_outline_mco,
                color: Colors.white),
            label: 'Trophy',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined, color: Colors.white),
            label: 'Shop',
          ),
        ],
      ),
    );
  }
}

class _Triangle extends StatelessWidget {
  const _Triangle({
    Key key,
    this.color,
  }) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
        painter: _ShapesPainter(color),
        child: Container(
            height: 95,
            width: 95,
            child: Center(
                child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, bottom: 16),
                    child: Transform.rotate(
                      angle: math.pi / 4,
                    )))));
  }
}

class _ShapesPainter extends CustomPainter {
  final Color color;
  _ShapesPainter(this.color);
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = color;
    var path = Path();
    path.lineTo(size.width, 0);
    path.lineTo(size.height, size.width);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}