import 'package:accounting_app/core/configs/theme/app_colors.dart';
import 'package:accounting_app/presentation/home/widgets/bank_linked_accounts.dart';
import 'package:accounting_app/presentation/home/widgets/collections.dart';
import 'package:accounting_app/presentation/home/widgets/current_balance.dart';
import 'package:accounting_app/presentation/home/widgets/header.dart';
import 'package:accounting_app/presentation/home/widgets/payments.dart';
import 'package:accounting_app/presentation/home/widgets/sales_expense.dart';
import 'package:accounting_app/presentation/home/widgets/todo_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12, top: 20),
        child: Column(
          children: [
            Header(),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [
                  CurrentBalance(),
                  SizedBox(height: 10),
                  TodoList(),
                  SizedBox(height: 10),
                  SalesExpense(),
                  SizedBox(height: 10),
                  Collections(),
                  SizedBox(height: 10),
                  Payments(),
                  SizedBox(height: 10),
                  BankLinkedAccounts(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
