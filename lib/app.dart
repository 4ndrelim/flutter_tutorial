import 'package:flutter/material.dart';
import 'screens/locations/locations.dart';
import 'screens/location_detail/location_detail.dart';
import 'style.dart';

const LocationsRoute = '/';
const LocationDetailRoute = '/location_detail';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: _routes(),
      // something general
      theme: ThemeData(
        // let us define how widgets are styled in the app
        appBarTheme: AppBarTheme(
          titleTextStyle: AppBarTextStyle,
        ),
        // loose name to be reused
        textTheme: TextTheme(
          // cannot mix 2018 and 2021 terms
          titleMedium: TitleTextStyle,
          titleSmall: SubTitleTextStyle,
          headlineSmall: CaptionTextStyle,
          bodyMedium: Body1TextStyle,
        ),
      ),
    );
  }

  RouteFactory _routes() {
    return (settings) {
      final Map arguments = (settings.arguments ?? {}) as Map;
      Widget screen;
      switch (settings.name) {
        case LocationsRoute:
          screen = Locations();
          break;
        case LocationDetailRoute:
          screen = LocationDetail(arguments['id']);
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }
}
