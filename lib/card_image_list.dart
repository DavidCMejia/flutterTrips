import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {
  const CardImageList({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("assets/img/beach.jpeg"),
          CardImage("assets/img/mountain_stars.jpeg"),
          CardImage("assets/img/river.jpeg"),
          CardImage("assets/img/sunset.jpeg"),
        ],
      ),
    );
  }
}
