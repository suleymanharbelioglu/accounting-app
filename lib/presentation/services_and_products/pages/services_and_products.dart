import 'package:accounting_app/common/widgets/button/floating_act_button.dart';
import 'package:accounting_app/presentation/sales/widgets/collectible.dart';
import 'package:accounting_app/presentation/services_and_products/widgets/all.dart';
import 'package:accounting_app/presentation/services_and_products/widgets/critical_stocks.dart';
import 'package:flutter/material.dart';

class ServicesAndProductsPage extends StatefulWidget {
  const ServicesAndProductsPage({super.key});

  @override
  State<ServicesAndProductsPage> createState() =>
      _ServicesAndProductsPageState();
}

class _ServicesAndProductsPageState extends State<ServicesAndProductsPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
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
          "Hizmet ve Ürünler",
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
        children: const [All(), CriticalStocks()],
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
            "Kritik Stoklar",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
