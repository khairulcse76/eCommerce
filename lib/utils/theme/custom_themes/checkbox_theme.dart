
import 'package:flutter/material.dart%20';

class MyCheckBoxTheme{
  MyCheckBoxTheme._();

  static CheckboxThemeData lightCheckBoxTheme=CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: MaterialStateProperty.resolveWith((states) {
      if(states.contains(MaterialState.selected)){
        return Colors.white;
      }else{
        return Colors.black;
      }
    }),
    fillColor: MaterialStateProperty.resolveWith((states) {
      if(states.contains(MaterialState.selected)){
        return Colors.blueAccent;
      }else{
        return Colors.transparent;
      }
    })
  );


  //---------------dark theme of check box----------
  static CheckboxThemeData darkCheckBoxTheme=CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: MaterialStateProperty.resolveWith((states) {
      if(states.contains(MaterialState.selected)){
        return Colors.white;
      }else{
        return Colors.black;
      }
    }),
    fillColor: MaterialStateProperty.resolveWith((states) {
      if(states.contains(MaterialState.selected)){
        return Colors.blueAccent;
      }else{
        return Colors.transparent;
      }
    })
  );
}

















