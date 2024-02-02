import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:logger/logger.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart';
class MyFormatter{

  static String formateDate(DateTime ? date){
    date ??=DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date);
  }

  static String formatCurrency(double amount){
    return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber){
    //assuming a 10 digit US/ ban phone Number format: (123)
    if(phoneNumber.length == 10){
      return '(${phoneNumber.substring(0,3)}) ${phoneNumber.substring(3,6)} ${phoneNumber.substring(6)}';
    }else if(phoneNumber.length==11){
      return '(${phoneNumber.substring(0,4)}) ${phoneNumber.substring(4,7)} ${phoneNumber.substring(7)}';
    }
    // add more custom phone numbre formatting logic for different formats if needed.
    return phoneNumber;
  }

  // not fully tested
static String internationalFormatPhoneNumber(String phoneNumber){
    //Remove any non-digit characters from the phone Number
  var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), "");

  //Extract the country code from the digitsOnly
  String countryCode = digitsOnly.substring(0,2);
  digitsOnly = digitsOnly.substring(2);

  final formattedNumber = StringBuffer();
  formattedNumber.write('$countryCode');

  int i=0;
  while(i<digitsOnly.length){
    int groupLength = 2;
    if(i==0 && countryCode == '+1'){
      groupLength =3;
    }
    int end = i + groupLength;
    formattedNumber.write(digitsOnly.substring(i,end));
  }
  

    return phoneNumber;
}
}