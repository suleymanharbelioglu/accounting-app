import 'package:accounting_app/core/configs/theme/app_colors.dart';
import 'package:flutter/material.dart';

class SalesExpense extends StatelessWidget {
  const SalesExpense({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Stış/Gider"),
              TextButton.icon(
                onPressed: () {},
                label: Text("Bu Hafta"),
                icon: Icon(Icons.arrow_downward_rounded),
                style: TextButton.styleFrom(
                  side: BorderSide(
                    color: Colors.grey, // çizgi rengi
                    width: 1, // çizgi kalınlığı
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // köşe yuvarlama
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                ),
              ),
            ],
          ),
          Text("30 haziran - 6 Temmuz"),
          Divider(
            color: Colors.grey.shade300, // açık gri
            thickness: 1, // çizgi kalınlığı
            height: 20, // üst-alt boşluk
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                flex: 50, // %50 satış
                child: Container(height: 20, color: AppColors.primary),
              ),
              Expanded(
                flex: 50, // %50 gider
                child: Container(height: 20, color: Colors.grey.shade400),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text("Satışlar"),
                  SizedBox(height: 5),
                  Text("0,00", style: TextStyle(color: AppColors.primary)),
                ],
              ),
              Column(
                children: [
                  Text("Giderler"),
                  SizedBox(height: 5),

                  Text("0,00", style: TextStyle(color: Colors.grey.shade400)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
