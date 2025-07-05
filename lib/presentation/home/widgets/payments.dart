import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Payments extends StatelessWidget {
  const Payments({super.key});

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
          Text("Toplam Ödemeler"),
          Text("₺0,00"),
          Divider(
            color: Colors.grey.shade300, // açık gri
            thickness: 1, // çizgi kalınlığı
            height: 20, // üst-alt boşluk
          ),
          SizedBox(height: 10),
          Container(
            // color: Colors.amber,
            height: 200,
            width: double.infinity,
            child: PieChart(
              PieChartData(
                sectionsSpace: 2, // dilimler arası boşluk
                centerSpaceRadius: 60, // ortası boş bırakmak istersen
                sections: [
                  PieChartSectionData(
                    value: 33,
                    color: Colors.brown,
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
                    color: Colors.pink,
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
              paymentBarRow(Colors.pink, "Vadesi Gelmemiş Fatura", 0.00),
              SizedBox(height: 5),
              paymentBarRow(Colors.brown, "Gecikmiş Çek", 0.00),
              SizedBox(height: 5),

              paymentBarRow(Colors.grey.shade400, "Planlanmamış", 0.00),
            ],
          ),
        ],
      ),
    );
  }

  Row paymentBarRow(Color dotColor, String barText, double value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(children: [colorDot(dotColor), SizedBox(width: 5), Text(barText)]),
        Text("₺" + value.toString()),
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
