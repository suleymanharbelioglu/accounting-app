import 'package:accounting_app/common/helper/menu/menu_helper.dart';
import 'package:accounting_app/common/helper/navigator/app_navigator.dart';
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

        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 15.0, // Dikey boşluk
            crossAxisSpacing: 15.0, // Yatay boşluk
            crossAxisCount: 2,
            childAspectRatio: 1.7,
          ),
          itemCount: MenuHelper.liste.length,
          itemBuilder: (BuildContext context, int index) {
            return menuContainer(
              MenuHelper.iconList[index],
              MenuHelper.liste[index],
              MenuHelper.menuPageList[index],
              context,
            );
          },
        ),
      ),
    );
  }

  Widget menuContainer(
    IconData icon,
    String label,
    Widget widget,
    BuildContext context,
  ) {
    return GestureDetector(
      onTap: () {
        AppNavigator.push(context, widget);
      },
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white, // Beyaz arka plan
          borderRadius: BorderRadius.circular(
            5,
          ), // Hafif oval kenarlar (köşe yarıçapı)
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min, // Sadece içeriği kadar yer kapla
            children: [
              Icon(
                icon, // Kalp ikonu (istediğiniz ikonla değiştirebilirsiniz)
                size: 40, // İkon boyutu
                color: Colors.green, // İkon rengi
              ),
              SizedBox(height: 3), // İkon ile metin arasında boşluk
              Text(
                label, // İkonun altındaki metin
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
