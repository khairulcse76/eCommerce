


import 'package:get_storage/get_storage.dart';

class MyValidatorHelper{
  
  
  static String? validateEmail(String? value){
    if(value == null || value.isEmpty){
      return 'Email is required.!!';
    }
    
    // Regular expression for email validation

    final emailRegExp = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');

    if(!emailRegExp.hasMatch(value)){
      return 'Invalid email address.!!!';
    }
    return null;

  }

  static String? validatePassword(String? value){
    if(value == null || value.isEmpty){
      return 'Password is required.';
    }
    //check for minimum password length
    if(value.length<6){
      return 'Password must be at least 6 characters long';
    }
    //check for uppercase letters
    if(!value.contains(RegExp(r'[A-Z]'))){
      return 'Password must contain at lest one uppercase letter';
    }

    //check for uppercase letters
    if(!value.contains(RegExp(r'[0-9]'))){
      return 'Password must contain at lest one one number';
    }

    //check for special characters
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return 'Password must contain at least one special character';
    }
    return null;
  }

  static String? validatePhoneNumber(String? value){

    if(value == null || value.isEmpty){
      return 'Password is required.';
    }

    // Regular Expression of number validation

    final phoneRegExp = RegExp(r'^[0-9]+$');
    if(!phoneRegExp.hasMatch(value)){
      return 'Invalid phone number format (10 digits required)!!!';
    }
    return null;

  }
  
}