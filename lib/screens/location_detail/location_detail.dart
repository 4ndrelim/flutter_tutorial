import 'package:flutter/material.dart';
import 'image_banner.dart';
import 'text_section.dart';
import '../../models/location.dart';
import 'location_tile.dart';

class LocationDetail extends StatelessWidget {
  final int _locationID;
  LocationDetail(this._locationID);
  @override
  Widget build(BuildContext context) {
    final location = Location.fetchByID(_locationID);
    //final location = locations.first; // get element at first index
    return Scaffold(
      appBar: AppBar(
        title: Text(location!.name),
      ),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment
              .stretch, // each item stretch from left to right on the crossAxis
          children: [
            ImageBanner(location.imagePath), // ! adds null check
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 4.0),
              child: LocationTile(location: location),
            ),
          ]..addAll(textSections(
              location)), // cascade operator to append all objects in an iterable to the existing list
        ),
      ),
    );
  }

  List<Widget> textSections(Location location) {
    return location.facts
        .map((fact) => TextSection(fact.title, fact.text))
        .toList();
  }
}
