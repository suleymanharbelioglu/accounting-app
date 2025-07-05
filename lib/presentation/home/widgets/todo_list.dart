import 'package:flutter/material.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

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
              Text("Yapılacaklar Listesi"),
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
          Expanded(
            child: Container(
              width: double.infinity,
              child: Center(child: Text("Bütün işler tamam ")),
            ),
          ),
        ],
      ),
    );
  }
}
