import 'package:accounting_app/core/configs/theme/app_colors.dart';
import 'package:flutter/material.dart';

class GivenAdvance extends StatelessWidget {
  const GivenAdvance({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Verilen avans içeriği")),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        alignment: Alignment.center,
        height: 50,
        width: double.infinity,
        color: AppColors.thirdBackground,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Toplam verilen avans",
              style: TextStyle(
                fontSize: 18, // Metin boyutunu büyüttük
                fontWeight: FontWeight.w600, // Metni kalınlaştırdık
              ),
            ),
            Text(
              "₺" + "0.00",
              style: TextStyle(
                fontSize: 22, // Para birimi için daha da büyük yapabiliriz
                fontWeight: FontWeight.w600, // Metni kalınlaştırdık
              ),
            ),
          ],
        ),
      ),
    );
  }
}
