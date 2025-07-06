import 'package:accounting_app/presentation/cash_and_banks/pages/cash_and_banks.dart';
import 'package:accounting_app/presentation/checks/pages/checks.dart';
import 'package:accounting_app/presentation/customers/pages/customers.dart';
import 'package:accounting_app/presentation/employees/pages/employees.dart';
import 'package:accounting_app/presentation/expenses/pages/expenses.dart';
import 'package:accounting_app/presentation/incoming_delivery_notes/pages/incoming_delivery_notes.dart';
import 'package:accounting_app/presentation/incoming_e_Invoices/pages/incoming_e_invoice.dart';
import 'package:accounting_app/presentation/inter_warehouse_transfer/pages/inter_warehouse_transfer.dart';
import 'package:accounting_app/presentation/offers/pages/offers.dart';
import 'package:accounting_app/presentation/outgoing_delivery_notes/pages/outgoing_delivery_notes.dart';
import 'package:accounting_app/presentation/sales/pages/sales.dart';
import 'package:accounting_app/presentation/services_and_products/pages/services_and_products.dart';
import 'package:accounting_app/presentation/suppliers/pages/suppliers.dart';
import 'package:accounting_app/presentation/warehouse/pages/warehouse.dart';
import 'package:flutter/material.dart';

class MenuHelper {
  static final List<String> liste = [
    'Satışlar',
    'Giderler',
    'Teklifler',
    'Gelen e-Faturalar',
    'Müşteriler',
    'Tedarikçiler',
    'Hizmet ve Ürünler',
    'Depo',
    'Depolar Arası Transfer',
    'Kasa ve Bankalar',
    'Çekler',
    'Çalışlanlar',
    'Giden İrsaliyeler',
    'Gelen İrsaliyeler',
  ];
  static final List<IconData> iconList = [
    Icons.shopping_cart, // Satışlar
    Icons.money_off, // Giderler
    Icons.description, // Teklifler
    Icons.receipt_long, // Gelen e-Faturalar
    Icons.people, // Müşteriler
    Icons.local_shipping, // Tedarikçiler
    Icons.inventory, // Hizmet ve Ürünler
    Icons.warehouse, // Depo
    Icons.compare_arrows, // Depolar Arası Transfer
    Icons.account_balance, // Kasa ve Bankalar
    Icons.request_quote, // Çekler
    Icons.badge, // Çalışlanlar
    Icons.upload_file, // Giden İrsaliyeler
    Icons.download, // Gelen İrsaliyeler
  ];
  static final List<Widget> menuPageList = [
    SalesPage(),
    ExpensesPage(),
    OffersPage(),
    IncomingEInvoicePage(),
    CustomersPage(),
    SuppliersPage(),
    ServicesAndProductsPage(),
    WarehousePage(),
    InterWarehouseTransferPage(),
    CashAndBanksPage(),
    ChecksPage(),
    EmployeesPage(),
    OutgoingDeliveryNotesPage(),
    IncomingDeliveryNotesPage(),
  ];
}
