import 'package:flutter/material.dart';
import 'dart:developer';

import 'package:fluttertest/buttons/button_purple.dart';

class DescriptionPlace extends StatelessWidget {
  final String descriptionDummy =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Mattis enim ut tellus elementum sagittis vitae et leo duis. At imperdiet dui accumsan sit amet nulla facilisi morbi. Amet consectetur adipiscing elit duis tristique sollicitudin nibh. Egestas purus viverra accumsan in nisl nisi scelerisque.";
  final String namePlace;
  final double stars;
  final String descriptionPlace;

  const DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace,
      {super.key});
  @override
  Widget build(BuildContext context) {
    // log('data: $stars'); // console.log

    final halfStar = Container(
      margin: const EdgeInsets.only(
        top: 350.0,
        right: 3.0,
      ),
      child: const Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );
    final unselectedStar = Container(
      margin: const EdgeInsets.only(
        top: 350.0,
        right: 3.0,
      ),
      child: const Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );

    final star = Container(
      margin: const EdgeInsets.only(
        top: 350.0,
        right: 3.0,
      ),
      child: const Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    log('stars: $stars'); // console.log
    Widget getStars(double numStars) {
      List<Widget> rowStars = [];
      int qStars = numStars.round();
      log('qStars: $qStars');
      for (var i = 0; i < 5; i++) {
        if (i < qStars) {
          rowStars.add(star);
        } else if (i == qStars && numStars > qStars) {
          rowStars.add(halfStar);
        } else {
          rowStars.add(unselectedStar);
        }
      }
      return Row(children: rowStars);
    }

    final titleStars = Row(children: <Widget>[
      Container(
        margin: const EdgeInsets.only(
          top: 350.0,
          left: 20.0,
          right: 20.0,
        ),
        child: Text(
          namePlace,
          style: const TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.w900,
          ),
          textAlign: TextAlign.left,
        ),
      ),
      Row(
        children: <Widget>[
          getStars(stars.toDouble()),
        ],
      )
    ]);

    final description = Container(
      margin: const EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0,
      ),
      child: Text(
        descriptionPlace,
        style: const TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.normal,
          color: Color(0xFF56575a),
        ),
        textAlign: TextAlign.left,
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        titleStars,
        description,
        const ButtonPurple('Navigate')
      ],
    );
  }
}
