import 'package:accounting_app/common/helper/navigator/app_navigator.dart';
import 'package:accounting_app/core/configs/theme/app_colors.dart';
import 'package:accounting_app/presentation/sales/pages/sales.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  MenuPage({super.key});
  final List<String> liste = [
    'Satışlar',
    'Giderler',
    'Teklifler',
    'Gelen e-Faturalar',
    'Müşteriler',
    'Tedarikçiler',
    'Hizmet ve Ürünler',
    'Depo',
    'Depolar Arası Transfer',
    'Kasa ve Bankalar',
    'Çekler',
    'Çalışlanlar',
    'Giden İrsaliyeler',
    'Gelen İrsaliyeler',
  ];
  final List<IconData> iconList = [
    Icons.shopping_cart, // Satışlar
    Icons.money_off, // Giderler
    Icons.description, // Teklifler
    Icons.receipt_long, // Gelen e-Faturalar
    Icons.people, // Müşteriler
    Icons.local_shipping, // Tedarikçiler
    Icons.inventory, // Hizmet ve Ürünler
    Icons.warehouse, // Depo
    Icons.compare_arrows, // Depolar Arası Transfer
    Icons.account_balance, // Kasa ve Bankalar
    Icons.request_quote, // Çekler
    Icons.badge, // Çalışlanlar
    Icons.upload_file, // Giden İrsaliyeler
    Icons.download, // Gelen İrsaliyeler
  ];
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
          itemCount: liste.length,
          itemBuilder: (BuildContext context, int index) {
            return menuContainer(
              iconList[index],
              liste[index],
              SalesPage(),
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
