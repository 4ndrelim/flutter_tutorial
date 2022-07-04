import 'package:flutter/material.dart';
import '../../models/location.dart';
import '../../style.dart';

const LocationTileHeight = 85.0;

class LocationTile extends StatelessWidget {
  final Location location;
  final bool darkTheme;

  LocationTile({required this.location, this.darkTheme = false});

  @override
  Widget build(BuildContext context) {
    final textColor = this.darkTheme ? TextColorLight : TextColorDark;

    return Container(
      //padding: EdgeInsets.symmetric(horizontal: DefaultPaddingHorizontal),
      height: LocationTileHeight,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              location.name.toUpperCase(),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: textColor),
            ),
            Text(
              location.userItinerarySummary.toUpperCase(),
              style: Theme.of(context).textTheme.titleSmall,
            ),
            Text(
              location.tourPackage.toUpperCase(),
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: textColor),
            ),
          ]),
    );
  }
}
