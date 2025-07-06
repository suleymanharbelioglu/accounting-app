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

  static final List<Widget> _pages = <Widget>[
    const CurrentStatePage(),
    MenuPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      floatingActionButton: floatingActButton(),
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

  Padding floatingActButton() {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: SizedBox(
        height: 80,
        width: 80,
        child: FloatingActionButton(
          shape: CircleBorder(),
          onPressed: () {
            // Ortadaki + butonuna tıklanınca yapılacak
          },
          backgroundColor: Colors.green,
          child: const Icon(Icons.add, color: Colors.white, size: 40),
        ),
      ),
    );
  }
}
