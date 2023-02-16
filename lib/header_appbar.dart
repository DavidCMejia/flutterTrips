import 'package:flutter/material.dart';

class HeaderAppBar extends StatelessWidget {
  const HeaderAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    final title = Container(
      margin: const EdgeInsets.only(
        top: 80.0,
        left: 20.0,
        right: 20.0,
      ),
      child: const Text(
        "Popular",
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 30.0,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
    final iconList = Container(
      margin: const EdgeInsets.only(
        top: 80.0,
        right: 20.0,
      ),
      child: const Icon(
        Icons.list,
        color: Colors.white,
      ),
    );
    return Row(
      children: <Widget>[
        title,
        iconList,
      ],
    );
  }
}
