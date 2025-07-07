import 'package:accounting_app/common/widgets/button/floating_act_button.dart';
import 'package:accounting_app/presentation/incoming_e_Invoices/widgets/approved.dart';
import 'package:accounting_app/presentation/incoming_e_Invoices/widgets/pending_approvel.dart';
import 'package:accounting_app/presentation/incoming_e_Invoices/widgets/rejected.dart';
import 'package:flutter/material.dart';

class IncomingEInvoicePage extends StatefulWidget {
  const IncomingEInvoicePage({super.key});

  @override
  State<IncomingEInvoicePage> createState() => _IncomingEInvoicePageState();
}

class _IncomingEInvoicePageState extends State<IncomingEInvoicePage>
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
          "Gelen e-Faturalar",
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
        children: const [PendingApprovel(), Approved(), Rejected()],
      ),
      // floatingActionButton: FloatingActButton(
      //   size: 70,
      //   onPressed: () {},
      //   bottomPadding: 20,
      // ),
    );
  }

  TabBar tabbar() {
    return TabBar(
      isScrollable: true,
      controller: _tabController,
      tabs: const [
        Tab(
          child: Text(
            "Onay bekleyen",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        Tab(
          child: Text(
            "Kabul edildi",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        Tab(
          child: Text(
            "Reddedildi",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
