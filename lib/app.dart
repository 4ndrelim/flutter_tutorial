import 'package:flutter/material.dart';
import 'screens/location_detail/location_detail.dart';
import 'style.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LocationDetail(),
      // something general
      theme: ThemeData(
        // let us define how widgets are styled in the app
        appBarTheme: AppBarTheme(
          titleTextStyle: AppBarTextStyle,
        ),
        // loose name to be reused
        textTheme: TextTheme(
          titleMedium: TitleTextStyle,
          bodyMedium: Body1TextStyle,
        ),
      ),
    );
  }
}
