import 'package:flutter/material.dart';
import 'location_fact.dart';

class Location {
  final int id;
  final String name;
  final String imagePath;
  final String userItinerarySummary;
  final String tourPackage;
  final List<LocationFact> facts;

  Location(this.id, this.name, this.imagePath, this.userItinerarySummary,
      this.tourPackage, this.facts);

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
      Location(1, 'Arashiyama Bamboo Grove', 'assets/images/Arashiyama.jpg',
          'Day 1: 6:00pm - 8:00pm', 'Standard', [
        LocationFact('Summary',
            "While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm."),
        LocationFact('How To Get There',
            'The fastest and easiest way to get to Arashiyama is by train. Take the JR Train from Kyoto Station on the JR Sagano/San-in Line to Saga-Arashiyama Station. From there, walk for 10 minutes and follow the signs to Arashiyama bamboo grove'),
      ]),
      Location(
          2,
          'Floating Shrine',
          'assets/images/Miyajima_Floating_shrine.jpg',
          'Day 2: 11:00am - 01:00pm',
          'Standard', [
        LocationFact('Summary',
            "The centuries-old, historical shrine and its torii gate are unique for being built over water, seemingly floating in the sea during high tide."),
        LocationFact('How To Get There',
            'From Miyajimaguchi Station, it is a short walk to the ferry pier, from where ferries depart frequently for Miyajima. Ferry rides take about 10 minutes and cost roughly 180 yen. Itsukushima Shrine is a ten minute walk, by following directions along the walkway from the Miyajima ferry pier.'),
      ]),
      Location(3, 'Hokkaido Blue Pond', 'assets/images/blue_pond.jpg',
          'Day 1: 09:00am - 12:00pm', 'package', [
        LocationFact('Summary',
            "The Shirogane Blue Pond in Hokkaido's Biei is a stunning sight that almost looks otherworldly with its unreal blue color. Depending on the weather and the season it can change from a milky light blue to a deep green-turquoise."),
        LocationFact('How To Get There',
            'Get on the Hokkaido Expressway at the Sapporo interchange (IC) and get off at Mikasa IC, then go pass Katsurazawa Dam and through Furano (about 150km).'),
      ]),
    ];
  }
}
