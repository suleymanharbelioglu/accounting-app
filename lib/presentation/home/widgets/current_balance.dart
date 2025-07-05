import 'package:flutter/material.dart';

class CurrentBalance extends StatelessWidget {
  const CurrentBalance({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.white,
      height: 80,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Text("Güncel Bakiye"), Text("₺0,00")],
      ),
    );
  }
}
