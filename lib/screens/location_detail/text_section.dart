import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  // private member - something only this widget knows about, declared using '_'
  // good practice to add final keyword
  final Color _color;
  // positional argument but no need to define method body
  TextSection(this._color);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: _color,
      ),
      child: Text('Hi'),
    );
  }
}
