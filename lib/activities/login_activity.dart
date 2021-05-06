import 'package:flutter/material.dart';

class LogInActivity extends StatefulWidget {
  //LogInActivity({Key key}) : super(key: key);

  @override
  _LogInActivityState createState() => _LogInActivityState();
}

class _LogInActivityState extends State<LogInActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      resizeToAvoidBottomInset: false,
      body: UiBackGround(),
    );
  }
}

class UiBackGround extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
      return  Stack(
        children: <Widget>[
           Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin:Alignment.topLeft,
                    end: Alignment(0.30, 0.6),
                    colors: <Color> [
                        Color(0xFFFFFFFF),
                        Color(0xFF01579B) 
                    ],
                    tileMode: TileMode.repeated,
                  ),
                ),
          ),
          Container(
              padding: EdgeInsets.only(top:65.0),
              child: Column(
                children: <Widget>[
                  Image(
                    image: AssetImage("assets/UserIcon.png"),
                    height: 120.0,
                  ),
                  SizedBox(height: 10.0, width: double.infinity),//centra la imagen
                ],
              ),
          ),
        ],
      );
  }
}