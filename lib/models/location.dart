import 'package:flutter/material.dart';
import 'location_fact.dart';

class Location {
  String name;
  String imagePath;
  final List<LocationFact> facts;

  Location(this.name, this.imagePath, this.facts);

  static List<Location> fetchAll() {
    return [
      Location('Arashiyama Bamboo Grove', 'assets/images/Arashiyama.jpg', [
        LocationFact('Summary',
            "Wonderful bamboo grove, an ethereal glow and seemingly endless heights in this wonderland"),
        LocationFact('How To Get There',
            'Kyoto Airport, with several terminals, is located 16 kilometers south of the city and is also known as ...'),
      ]),
    ];
  }
}
