import 'package:accounting_app/common/widgets/button/floating_act_button.dart';
import 'package:accounting_app/presentation/sales/widgets/all.dart';
import 'package:accounting_app/presentation/sales/widgets/canceled.dart';
import 'package:accounting_app/presentation/sales/widgets/collectible.dart';
import 'package:accounting_app/presentation/sales/widgets/overdue.dart';
import 'package:flutter/material.dart';

class CashAndBanksPage extends StatefulWidget {
  const CashAndBanksPage({super.key});

  @override
  State<CashAndBanksPage> createState() => _CashAndBanksPageState();
}

class _CashAndBanksPageState extends State<CashAndBanksPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

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
          "Satışlar",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        actions: [
          Icon(Icons.calendar_today, size: 30),
          SizedBox(width: 15),
          Icon(Icons.search, size: 35),
          SizedBox(width: 15),
        ],
        bottom: tabbar(),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [All(), Collectible(), Overdue(), Canceled()],
      ),
      floatingActionButton: FloatingActButton(
        size: 70,
        onPressed: () {},
        bottomPadding: 20,
      ),
    );
  }

  TabBar tabbar() {
    return TabBar(
      isScrollable: true,
      controller: _tabController,
      tabs: const [
        Tab(
          child: Text(
            "Tümü",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        Tab(
          child: Text(
            "Tahsil Edilecek",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        Tab(
          child: Text(
            "Gecikmiş",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        Tab(
          child: Text(
            "İptal Edilen",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
