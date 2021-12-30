//palette.dart
import 'package:flutter/material.dart';
class Palette {
  static const MaterialColor kToDark =  MaterialColor(
    0xff195860, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
     <int, Color>{
      50:  Color(0xff174f56 ),//10%
      100:  Color(0xff14464d),//20%
      200:  Color(0xff123e43),//30%
      300:  Color(0xff0f353a),//40%
      400:  Color(0xff0d2c30),//50%
      500:  Color(0xff0a2326),//60%
      600:  Color(0xff071a1d),//70%
      700:  Color(0xff051213),//80%
      800:  Color(0xff02090a),//90%
      900:  Color(0xff000000),//100%
    },
  );
} // you can