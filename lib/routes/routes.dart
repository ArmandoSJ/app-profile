
import 'package:app_profile/activities/home_activity.dart';
import 'package:app_profile/activities/login_activity.dart';
import 'package:flutter/material.dart';



Map<String, WidgetBuilder> getApplicationRoutes() {

  return <String, WidgetBuilder> {

      'login'         : ( BuildContext context ) => LogInActivity(),  
      'home'         : ( BuildContext context ) => HomeActivity(),
  };

}
