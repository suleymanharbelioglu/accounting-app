import 'package:accounting_app/common/widgets/button/floating_act_button.dart';
import 'package:accounting_app/presentation/employees/widgets/all.dart';
import 'package:accounting_app/presentation/employees/widgets/given_advance.dart';
import 'package:accounting_app/presentation/employees/widgets/payable.dart';
import 'package:flutter/material.dart';

class EmployeesPage extends StatefulWidget {
  const EmployeesPage({super.key});

  @override
  State<EmployeesPage> createState() => _EmployeesPageState();
}

class _EmployeesPageState extends State<EmployeesPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
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
          "Çalışanlar",
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
        children: const [All(), Payable(), GivenAdvance()],
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
            "Ödenecek",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        Tab(
          child: Text(
            "Verilen Avans",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
