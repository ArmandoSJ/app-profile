  
import 'package:app_profile/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:app_profile/activities/login_activity.dart';
import 'package:app_profile/activities/signup_activity.dart';
import 'package:app_profile/widgets/main_view.dart';
import 'package:app_profile/utils/constants.dart' as utils;



class MainActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return MainView(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Welcome to the app from softwareDSJ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            SizedBox(height: size.height * 0.20),
            SizedBox(height: size.height * 0.05),
            ButtonUI(
              text: "Inicio de sesion",
              activity: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {return LogInActivity(); },
                  ),
                );
              },
            ),
            ButtonUI(
              text: "Registrar",
              color: utils.vPrimaryLightColor,
              textColor: Colors.black,
              activity: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpActivity();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}