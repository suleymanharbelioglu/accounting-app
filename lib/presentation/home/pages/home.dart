import 'package:accounting_app/common/widgets/button/floating_act_button.dart';
import 'package:accounting_app/core/configs/theme/app_colors.dart';
import 'package:accounting_app/presentation/home/pages/current_state.dart';
import 'package:accounting_app/presentation/home/pages/menu.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = <Widget>[CurrentStatePage(), MenuPage()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      floatingActionButton: FloatingActButton(
        size: 80,
        onPressed: fastTransactionBottomSheet,
        topPadding: 40,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: bottomNavBar(),
    );
  }

  SizedBox bottomNavBar() {
    return SizedBox(
      height: 80,
      child: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        color: AppColors.background,
        child: SizedBox(
          height: 80,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween, // ikonlar kenarlarda
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 32.0),
                child: IconButton(
                  icon: const Icon(Icons.pie_chart, size: 35),
                  color: _selectedIndex == 0 ? AppColors.primary : Colors.grey,
                  onPressed: () => _onItemTapped(0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 32.0),
                child: IconButton(
                  icon: const Icon(Icons.menu, size: 35),
                  color: _selectedIndex == 1 ? AppColors.primary : Colors.grey,
                  onPressed: () => _onItemTapped(1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<dynamic> fastTransactionBottomSheet() {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (context) {
        return FractionallySizedBox(
          heightFactor: 0.5, // Alt panel ekranın %50'si kadar yüksek
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Başlık ve Kapatma ikonu
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hızlı İşlemler",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {
                        Navigator.pop(context); // Sheet’i kapat
                      },
                    ),
                  ],
                ),
              ),
              Divider(),

              // İçerik buraya
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text("Buraya hızlı işlem içerikleri eklenebilir."),
              ),
            ],
          ),
        );
      },
    );
  }
}
