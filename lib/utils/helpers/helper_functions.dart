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

class MyHelperFunctions {
  static Color? getColor(String value) {
    //define you product specific colors here and it will match the attribute color and show specific

    if (value == 'Green') {
      return Colors.green;
    } else if (value == 'Red') {
      return Colors.red;
    } else if (value == 'Blue') {
      return Colors.blue;
    } else if (value == 'Pink') {
      return Colors.pink;
    } else if (value == 'Purple') {
      return Colors.purple;
    } else if (value == 'Black') {
      return Colors.black;
    } else if (value == 'White') {
      return Colors.white;
    } else if (value == 'Yellow') {
      return Colors.yellow;
    } else if (value == 'Orange') {
      return Colors.orange;
    } else if (value == 'Brown') {
      return Colors.brown;
    } else if (value == 'Grey') {
      return Colors.grey;
    } else if (value == 'Green') {
      return Colors.green;
    } else if (value == 'Teal') {
      return Colors.teal;
    } else if (value == 'Indigo') {
      return Colors.indigo;
    } else if (value == 'IndigoAccent') {
      return Colors.indigoAccent;
    } else if (value == 'BlueGrey') {
      return Colors.blueGrey;
    } else if (value == 'Brown') {
      return Colors.brown;
    } else if (value == 'LightBlue') {
      return Colors.lightBlue;
    } else if (value == 'BlueAccent') {
      return Colors.blueAccent;
    } else if (value == 'Transparent') {
      return Colors.transparent;
    } else if (value == 'PinkAccent') {
      return Colors.pinkAccent;
    } else if (value == 'PurpleAccent') {
      return Colors.purpleAccent;
    } else if (value == 'RedAccent') {
      return Colors.redAccent;
    } else if (value == 'YellowAccent') {
      return Colors.yellowAccent;
    } else if (value == 'DeepOrange') {
      return Colors.deepOrange;
    } else if (value == 'OrangeAccent') {
      return Colors.orangeAccent;
    } else if (value == 'DeepOrangeAccent') {
      return Colors.deepOrangeAccent;
    } else if (value == 'YellowAccent') {
      return Colors.yellowAccent;
    } else if (value == 'PurpleAccent') {
      return Colors.purpleAccent;
    } else if (value == 'DeepPurple') {
      return Colors.deepPurple;
    } else if (value == 'Black12') {
      return Colors.black12;
    } else if (value == 'Black26') {
      return Colors.black26;
    } else if (value == 'Black38') {
      return Colors.black38;
    } else if (value == 'Black45') {
      return Colors.black45;
    } else if (value == 'Black54') {
      return Colors.black54;
    } else if (value == 'Black87') {
      return Colors.black87;
    } else if (value == 'White10') {
      return Colors.white10;
    } else if (value == 'White12') {
      return Colors.white12;
    } else if (value == 'White24') {
      return Colors.white24;
    } else if (value == 'White38') {
      return Colors.white38;
    } else if (value == 'White54') {
      return Colors.white54;
    } else if (value == 'White60') {
      return Colors.white60;
    } else if (value == 'White70') {
      return Colors.white70;
    }
  }

  static void showSnackBar(String message) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  static void showAlert(String title, String message) {
    showDialog(
        context: Get.context!,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: Text(message),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'))
            ],
          );
        });
  }

  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => screen,
        ));
  }

  static String truncateText(String text, int maxLength) {
    if (text.length <= maxLength) {
      return text;
    } else {
      return '${text.substring(0, maxLength)}';
    }
  }

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static Size screenSize() {
  return MediaQuery.of(Get.context!).size;
  }

  static double screenHeight(){
    return MediaQuery.of(Get.context!).size.height;
  }

  static double screenWidth(){
    return MediaQuery.of(Get.context!).size.width;
  }

  static String getFormattedDAte(DateTime date, {String format = 'dd MMM yyyy'}){
    return DateFormat(format).format(date);
  }

  static List<MyList> removeDuplicates<MyList>(List<MyList> list){
    return list.toSet().toList();
  }

  static List<Widget> wrapWidgets(List<Widget> widget, int rowSize){
    final wrappedLIst = <Widget>[];
    for(var i=0; i<widget.length; i+=rowSize){
      final rowChildren = widget.sublist(i, i+rowSize > widget.length? widget.length : i + rowSize);
      wrappedLIst.add(Row(children: rowChildren));
    }
    return wrappedLIst;
  }


}
