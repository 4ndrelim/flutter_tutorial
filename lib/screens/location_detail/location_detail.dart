import 'package:flutter/material.dart';
import 'text_section.dart';

class LocationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment
            .stretch, // each item stretch from left to right on the crossAxis
        children: [
          TextSection(Colors.red),
          TextSection(Colors.blue),
          TextSection(Colors.green),
        ],
      ),
    );
  }
}
