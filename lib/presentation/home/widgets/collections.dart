import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Collections extends StatelessWidget {
  const Collections({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      height: 400,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Toplam Tahsilat",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            "₺0,00",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Divider(color: Colors.grey.shade300, thickness: 1, height: 20),
          SizedBox(height: 10),
          Container(
            height: 200,
            width: double.infinity,
            child: PieChart(
              PieChartData(
                sectionsSpace: 2,
                centerSpaceRadius: 60,
                sections: [
                  PieChartSectionData(
                    value: 33,
                    color: Colors.green,
                    title: '33%',
                    titleStyle: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  PieChartSectionData(
                    value: 33,
                    color: Colors.grey.shade400,
                    title: '33%',
                    titleStyle: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  PieChartSectionData(
                    value: 34,
                    color: Colors.blue,
                    title: '34%',
                    titleStyle: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 15),
          Column(
            children: [
              collectionBarRow(Colors.blue, "Vadesi Gelmemiş Fatura", 0.00),
              SizedBox(height: 5),
              collectionBarRow(Colors.green, "Gecikmiş Çek", 0.00),
              SizedBox(height: 5),
              collectionBarRow(Colors.grey.shade400, "Planlanmamış", 0.00),
            ],
          ),
        ],
      ),
    );
  }

  Row collectionBarRow(Color dotColor, String barText, double value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            colorDot(dotColor),
            SizedBox(width: 5),
            Text(
              barText,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Text(
          "₺" + value.toString(),
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget colorDot(Color color) {
    return Container(
      width: 12,
      height: 12,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
    );
  }
}
