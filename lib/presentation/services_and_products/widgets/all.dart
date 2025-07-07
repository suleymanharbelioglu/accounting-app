import 'package:flutter/material.dart';

class All extends StatelessWidget {
  const All({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Tümü içeriği")),
      // bottomNavigationBar: Container(
      //   padding: EdgeInsets.symmetric(horizontal: 15),
      //   alignment: Alignment.center,
      //   height: 50,
      //   width: double.infinity,
      //   color: AppColors.thirdBackground,
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       Text(
      //         "Toplam Tahsilat",
      //         style: TextStyle(
      //           fontSize: 18, // Metin boyutunu büyüttük
      //           fontWeight: FontWeight.w600, // Metni kalınlaştırdık
      //         ),
      //       ),
      //       Text(
      //         "₺" + "0.00",
      //         style: TextStyle(
      //           fontSize: 22, // Para birimi için daha da büyük yapabiliriz
      //           fontWeight: FontWeight.w600, // Metni kalınlaştırdık
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
