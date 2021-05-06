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
                        Color(0xFFFFF9C4),
                        Color(0XFFFFECB3) 
                        //Colors.yellow.shade300
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
                  SizedBox(height: 10.0, width: double.infinity)
                ],
              ),
          ),
          ContainerUI(),
        ],
      );
      
  }
}

class ContainerUI extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15.0),
          child: Form(
            //key: _formKey,
            child: Column(
              children: <Widget>[
                 SafeArea(
                  child: Container(
                      height: 120.0
                      ),
                ),
                SizedBox(height: 30.0),
                Text('Iniciar Sesión', style: TextStyle(fontSize: 20.0, color: Colors.black)),
                SizedBox(height: 10.0),
                FormUI()
              ],
            ),
          ),
        ),
      );
  }
}


class FormUI extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Row( 
      children: [
        TextButton(  
            child: Text('Ingresar'),
            style: TextButton.styleFrom(
                   primary: Colors.black,
                   backgroundColor: Colors.pink.shade100,
                   textStyle: TextStyle(fontSize: 12),
                   shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0),
                  ),
            ),
            onPressed: () {},
        ),
      ]                      
    );
    
    
    
    
/*     RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric( horizontal: 100.0, vertical: 18.0),
            child: Text('Ingresar'),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0)
          ),
          elevation: 0.0,
          color: Colors.blue.shade900,
          textColor: Colors.white,
          onPressed:  ( _guardando ) ? null : _login,
    ); */
  }
}