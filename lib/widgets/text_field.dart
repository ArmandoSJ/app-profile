import 'package:flutter/material.dart';

class TextFieldUI extends StatelessWidget {
  final String text;
  final Function activity;
  final Function validator;
  final Color color, textColor;
  Icon icon;
  final autofocus;
  const TextFieldUI({
    Key key,
    this.autofocus,
    this.icon,
    this.text,
    this.activity,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     padding: EdgeInsets.symmetric(horizontal:20.0), 
        child:Theme(
          data: ThemeData(
          primaryColor: Colors.white,
          primaryColorDark: Colors.white,
          ), 
          child: TextFormField(
              autofocus: autofocus,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide(
                      color: Colors.red,
                  ),
                  ),
                  hintText: text,
                  prefixIcon: icon
              ),
              onSaved: activity,
              validator: validator
          ),
        ),
    );
  }
}