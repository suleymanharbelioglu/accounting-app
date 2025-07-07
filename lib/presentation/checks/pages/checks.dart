import 'package:accounting_app/presentation/checks/widgets/issued.dart';
import 'package:accounting_app/presentation/checks/widgets/received.dart';
import 'package:flutter/material.dart';

class ChecksPage extends StatefulWidget {
  const ChecksPage({super.key});

  @override
  State<ChecksPage> createState() => _ChecksPageState();
}

class _ChecksPageState extends State<ChecksPage>
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
          "Çekler",
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
        children: const [Received(), Issued()],
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
            "Alınan",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        Tab(
          child: Text(
            "Verilen",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
