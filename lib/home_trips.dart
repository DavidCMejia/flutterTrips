import 'package:flutter/material.dart';

import 'description_place.dart';
import 'header_appbar.dart';
import 'review_list.dart';

class HomeTrips extends StatelessWidget {
  const HomeTrips({super.key});

  @override
  Widget build(BuildContext context) {
    String descriptionDummy =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Mattis enim ut tellus elementum sagittis vitae et leo duis. At imperdiet dui accumsan sit amet nulla facilisi morbi. Amet consectetur adipiscing elit duis tristique sollicitudin nibh. Egestas purus viverra accumsan in nisl nisi scelerisque.";

    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace(
              "Dubai",
              3,
              descriptionDummy,
            ),
            const ReviewList(),
          ],
        ),
        const HeaderAppBar(),
      ],
    );
  }
}
