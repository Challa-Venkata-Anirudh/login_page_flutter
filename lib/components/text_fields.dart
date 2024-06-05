import 'package:flutter/material.dart';
SizedBox field(String text, String labeltext,IconData icon,double wide,double ver,double hor,int a,bool yes) {
  return SizedBox(
    width: wide*0.45,
    child: Padding(
      padding:  EdgeInsets.symmetric(vertical: ver, horizontal: hor),
      child: TextFormField(
          obscureText: yes,
          style: TextStyle(fontWeight: FontWeight.w900, fontFamily: 'JosefinSans'),
          decoration: InputDecoration(
            prefixIcon: Icon(icon),
            filled: true,
            labelText: text,
            hintText: labeltext,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          ),
          validator: (value) {
            if (a==1) {
              return validateemail(value);
            } else if(a==2) {
              return validatepass(value);
            }
            return null;
          }
      ),
    ),
  );
}

String? validateemail(value) {
  if (value!.isEmpty) {
    return "Please Enter Email";
  }
  RegExp email = RegExp(r'^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$');
  if (!email.hasMatch(value)) {
    return 'Enter valid email';
  }
  return null;
}

String? validatepass(value) {
  if (value!.isEmpty) {
    return "Please Enter Password";
  }
  RegExp size = RegExp(r'.{8,20}');
  RegExp spec = RegExp(r'(?=.*[@#$%^&+=])');
  RegExp capital = RegExp(r'[A-Z]+');
  if (!size.hasMatch(value)) {
    return 'Password is too short';
  } else if (!spec.hasMatch(value)) {
    return 'Password does not have special characters';
  } else if (!capital.hasMatch(value)) {
    return 'Password does not contain capital letter';
  }
  return null;
}