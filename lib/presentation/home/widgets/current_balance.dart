import 'package:flutter/material.dart';

class CurrentBalance extends StatelessWidget {
  const CurrentBalance({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      // color: Colors.white,
      height: 80,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Güncel Bakiye",
            style: TextStyle(
              fontSize: 20, // başlık boyutu
              fontWeight: FontWeight.bold, // kalın yazı
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 4), // dikey boşluk
          Text(
            "₺0,00",
            style: TextStyle(
              fontSize: 26, // rakamlar daha büyük
              fontWeight: FontWeight.bold,
              color: Colors.green.shade700, // renk isteğe göre değiştirilebilir
            ),
          ),
        ],
      ),
    );
  }
}
