import 'package:flutter/material.dart';
import '../../app.dart';
import '../../models/location.dart';

class Locations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();
    return Scaffold(
      appBar: AppBar(
        title: Text('Locations'),
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) =>
            _itemBuilder(context, index, locations[index]),
      ),
    );
  }

  void _onLocationTap(BuildContext context, int locationID) {
    Navigator.pushNamed(context, LocationDetailRoute,
        arguments: {"id": locationID});
  }

  Widget _itemBuilder(BuildContext context, int index, Location location) {
    return GestureDetector(
      child: Container(
        child: Text(location.name),
      ),
      onTap: () => _onLocationTap(context, location.id),
    );
  }
}
