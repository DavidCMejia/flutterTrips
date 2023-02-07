import 'package:flutter/material.dart';

class CardImageList extends StatefulWidget {
  const CardImageList({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImageWithFabIcon(
            pathImage: "assets/img/beach_palm.jpeg",
            iconData: Icons.favorite_border,
            width: 250.0,
            height: 350.0,
            left: 20.0,
          ),
          CardImageWithFabIcon(
            pathImage: "assets/img/mountain.jpeg",
            iconData: Icons.favorite_border,
            width: 250.0,
            height: 350.0,
            left: 20.0,
          ),
          CardImageWithFabIcon(
            pathImage: "assets/img/beach_palm.jpeg",
            iconData: Icons.favorite_border,
            width: 250.0,
            height: 350.0,
            left: 20.0,
          ),
          CardImageWithFabIcon(
            pathImage: "assets/img/mountain.jpeg",
            iconData: Icons.favorite_border,
            width: 250.0,
            height: 350.0,
            left: 20.0,
          ),
        ],
      ),
    );
  }
}
