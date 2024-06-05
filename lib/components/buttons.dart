import 'package:flutter/material.dart';
SizedBox button(double size,Function()? name,String text){
  return SizedBox(
      height: 50,
      width: size*0.15,
      child: FloatingActionButton(onPressed: name, child: Text(text,
        style: TextStyle(fontFamily: 'JosefinSans',fontWeight: FontWeight.w900),)));
}