import 'package:accounting_app/core/configs/theme/app_colors.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Menü"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12, top: 20),

        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 10.0, // Dikey boşluk
            crossAxisSpacing: 10.0, // Yatay boşluk
            crossAxisCount: 2,
          ),
          children: [
            menuContainer(),
            menuContainer(),
            menuContainer(),
            menuContainer(),
            menuContainer(),
            menuContainer(),
          ],
        ),
      ),
    );
  }

  Container menuContainer() {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white, // Beyaz arka plan
        borderRadius: BorderRadius.circular(
          15,
        ), // Hafif oval kenarlar (köşe yarıçapı)
      ),
      child: Center(
        child: const Column(
          mainAxisSize: MainAxisSize.min, // Sadece içeriği kadar yer kapla
          children: [
            Icon(
              Icons
                  .favorite, // Kalp ikonu (istediğiniz ikonla değiştirebilirsiniz)
              size: 40, // İkon boyutu
              color: Colors.red, // İkon rengi
            ),
            SizedBox(height: 10), // İkon ile metin arasında boşluk
            Text(
              'Beğenilenler', // İkonun altındaki metin
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w100,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
