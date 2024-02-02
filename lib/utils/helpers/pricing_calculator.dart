import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_storage/get_storage.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:logger/logger.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MyPricingCalculator {
  MyPricingCalculator._();

  //--- Calculate price based on tax and shipping
  static double calculateTotalPrice(double productPrice, String location) {
    double texRate = getTaxRateForLocation(location);

    double texAmount = productPrice * texRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + texAmount + shippingCost;
    return totalPrice;
  }

//--- Calculate Shipping cost------

  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  // ------ Calculate tax----

  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location){

    return 0.10;
  }

  static double getShippingCost(String location) {

    return 5.00;
  }


}
