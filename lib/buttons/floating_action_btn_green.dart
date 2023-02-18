import 'package:flutter/material.dart';

class FloatingActionBtnGreen extends StatefulWidget {
  const FloatingActionBtnGreen({super.key});

  @override
  State<FloatingActionBtnGreen> createState() => _FloatingActionBtnGreen();
}

class _FloatingActionBtnGreen extends State<FloatingActionBtnGreen> {
  bool _isPressed = false;

  void onPressedFav() {
    setState(() {
      _isPressed = !_isPressed;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: _isPressed
            ? const Text("Agregaste a tus favoritos")
            : const Text("Eliminaste de tus favoritos"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: _isPressed ? Colors.green : Colors.grey,
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: _isPressed
          ? const Icon(Icons.favorite)
          : const Icon(Icons.favorite_border),
    );
  }
}
