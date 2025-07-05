import 'package:accounting_app/presentation/home/pages/current_state.dart';
import 'package:accounting_app/presentation/home/pages/menu.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0; // Seçili sekmenin indeksi

  // Her bir sekme için gösterilecek basit widget'lar
  static const List<Widget> _pages = <Widget>[CurrentStatePage(), MenuPage()];

  // Sekmeye tıklandığında çalışan fonksiyon
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Seçili indeksi güncelle
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // Seçili indekse göre sayfayı göster
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Güncel Durum',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Menü'),
        ],
        currentIndex: _selectedIndex, // Hangi sekmenin seçili olduğunu belirtir
        selectedItemColor: Colors.blue, // Seçili öğenin rengi
        onTap: _onItemTapped, // Sekmeye tıklandığında ne olacağını belirler
      ),
    );
  }
}
