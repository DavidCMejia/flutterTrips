import 'package:flutter/material.dart';
import 'package:fluttertest/card_image_list.dart';
import 'package:fluttertest/gradient_back.dart';

class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [GradientBack("Bienvenido"), const CardImageList()],
    );
  }
}
