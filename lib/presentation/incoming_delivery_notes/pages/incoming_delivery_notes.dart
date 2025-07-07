import 'package:accounting_app/common/widgets/button/floating_act_button.dart';
import 'package:accounting_app/core/configs/theme/app_colors.dart';
import 'package:flutter/material.dart';

class IncomingDeliveryNotesPage extends StatefulWidget {
  const IncomingDeliveryNotesPage({super.key});

  @override
  State<IncomingDeliveryNotesPage> createState() =>
      _IncomingDeliveryNotesPageState();
}

class _IncomingDeliveryNotesPageState extends State<IncomingDeliveryNotesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Icon(Icons.arrow_back_ios, size: 30),
          ),
        ),
        title: Text(
          "Gelen İrsaliyeler",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        actions: [
          Icon(Icons.calendar_today, size: 30),
          SizedBox(width: 15),
          Icon(Icons.search, size: 35),
          SizedBox(width: 15),
        ],
      ),
      body: Center(child: Text("Gelen irsaliye sayısı")),
      floatingActionButton: FloatingActButton(
        size: 70,
        onPressed: () {},
        bottomPadding: 20,
      ),
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
              "Giden irsaliye sayısı",
              style: TextStyle(
                fontSize: 18, // Metin boyutunu büyüttük
                fontWeight: FontWeight.w600, // Metni kalınlaştırdık
              ),
            ),
            Text(
              "0" + " kayıt",
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
