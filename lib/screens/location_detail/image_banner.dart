import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  final String _assetPath;
  // ignore: use_key_in_widget_constructors
  const ImageBanner(this._assetPath);

  @override
  Widget build(BuildContext context) {
    // wrapping in a container or some widget allows for properties like padding
    return Container(
      constraints: const BoxConstraints.expand(
        height: 250.0,
      ),
      decoration: const BoxDecoration(color: Colors.grey),
      child: Image.asset(
        _assetPath,
        // specify how image would expand and behave based on container/screen size
        fit: BoxFit.cover,
      ),
    );
  }
}
