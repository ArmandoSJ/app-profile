import 'package:app_profile/providers/ui_provider.dart';
import 'package:app_profile/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
/*
 * developed by asalazarj
 */
void main() async {
  
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UiProvider() ),
      ],
     child: MaterialApp(
          title: 'app-profile',
          debugShowCheckedModeBanner: false,
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ], 
          supportedLocales: [
            const Locale('en', 'US'), // English
            const Locale('es', 'ES'), // Spanish
          ],
          initialRoute: 'home', 
          routes: getApplicationRoutes(),
          theme: ThemeData(
            primaryColor: Colors.blue,
            floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.deepPurple
          )
          ),  
     ),
    );
  }
}