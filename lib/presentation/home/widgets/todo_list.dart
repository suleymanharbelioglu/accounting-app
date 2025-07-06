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
              Text(
                "Yapılacaklar Listesi",
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
          Expanded(
            child: Container(
              width: double.infinity,
              child: Center(
                child: Text(
                  "Bütün işler tamam ",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
