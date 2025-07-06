import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      // color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.tune, size: 30),
              SizedBox(width: 10),
              Text(
                "SULEYMAN HARBELIOGLU",
                style: TextStyle(
                  fontSize: 17, // Yazı boyutu (isteğe göre büyütülebilir)
                  fontWeight: FontWeight.bold, // Kalın yazı
                  color: Colors.black, // Renk (isteğe göre)
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(Icons.visibility, size: 28),
          ),
        ],
      ),
    );
  }
}
