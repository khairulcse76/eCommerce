import 'package:ecommerce/utils/theme/theme.dart';
import 'package:flutter/material.dart%20';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      //theme: MyAppTheme.lightTheme,
      //darkTheme: MyAppTheme.darkTheme,
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Container(
        color: Colors.purpleAccent.shade100,
      ),
    );
  }
}