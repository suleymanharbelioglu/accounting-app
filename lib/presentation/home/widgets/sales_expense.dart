import 'package:accounting_app/core/configs/theme/app_colors.dart';
import 'package:flutter/material.dart';

class SalesExpense extends StatelessWidget {
  const SalesExpense({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      height: 220,
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
              Text(
                "Stış/Gider",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              TextButton.icon(
                onPressed: () {},
                label: Text(
                  "Bu Hafta",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                icon: Icon(Icons.arrow_downward_rounded),
                style: TextButton.styleFrom(
                  side: BorderSide(color: Colors.grey, width: 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                ),
              ),
            ],
          ),
          Text(
            "30 haziran - 6 Temmuz",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Divider(color: Colors.grey.shade300, thickness: 1, height: 20),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                flex: 50,
                child: Container(height: 20, color: AppColors.primary),
              ),
              Expanded(
                flex: 50,
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
                  Text(
                    "Satışlar",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "0,00",
                    style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Giderler",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "0,00",
                    style: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
