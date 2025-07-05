import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      // color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.add),
              SizedBox(width: 10),
              Text("SULEYMAN HARBELIOGLU"),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(Icons.abc),
          ),
        ],
      ),
    );
  }
}
