import 'package:flutter/material.dart';

class FloatingActButton extends StatelessWidget {
  const FloatingActButton({
    super.key,
    required this.size,
    required this.onPressed,
    this.topPadding = 0,
    this.bottomPadding = 0,
  });
  final double size;
  final Function onPressed;
  final double topPadding;
  final double bottomPadding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: topPadding, bottom: bottomPadding),
      child: SizedBox(
        height: size,
        width: size,
        child: FloatingActionButton(
          shape: CircleBorder(),
          onPressed: () {
            onPressed();
          },
          backgroundColor: Colors.green,
          child: const Icon(Icons.add, color: Colors.white, size: 40),
        ),
      ),
    );
  }
}
