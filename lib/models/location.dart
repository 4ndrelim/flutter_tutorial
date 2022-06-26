import 'package:flutter/material.dart';
import 'location_fact.dart';

class Location {
  final int id;
  String name;
  String imagePath;
  final List<LocationFact> facts;

  Location(this.id, this.name, this.imagePath, this.facts);

  static Location? fetchByID(int locationID) {
    List<Location> locations = Location.fetchAll();
    for (var i = 0; i < locations.length; i++) {
      if (locations[i].id == locationID) {
        return locations[i];
      }
    }
    return null;
  }

  static List<Location> fetchAll() {
    return [
      Location(1, 'Arashiyama Bamboo Grove', 'assets/images/Arashiyama.jpg', [
        LocationFact('Summary',
            "Wonderful bamboo grove, an ethereal glow and seemingly endless heights in this wonderland"),
        LocationFact('How To Get There',
            'Kyoto Airport, with several terminals, is located 16 kilometers south of the city and is also known as ...'),
      ]),
      Location(
          2, 'Floating Shrine', 'assets/images/Miyajima_Floating_shrine.jpg', [
        LocationFact('Summary',
            "Wonderful bamboo grove, an ethereal glow and seemingly endless heights in this wonderland"),
        LocationFact('How To Get There',
            'Kyoto Airport, with several terminals, is located 16 kilometers south of the city and is also known as ...'),
      ]),
      Location(3, 'Hokkaido Blue Pond', 'assets/images/blue_pond.jpg', [
        LocationFact('Summary',
            "Wonderful bamboo grove, an ethereal glow and seemingly endless heights in this wonderland"),
        LocationFact('How To Get There',
            'Kyoto Airport, with several terminals, is located 16 kilometers south of the city and is also known as ...'),
      ]),
    ];
  }
}
