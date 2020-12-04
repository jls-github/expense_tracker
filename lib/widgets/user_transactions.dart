import 'package:flutter/material.dart';
import 'new_transaction.dart';
import 'transaction_list.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final List<Transaction> transactions = <Transaction>[
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 2050,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Groceries',
      amount: 4050,
      date: DateTime.now(),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(titleController, amountController),
        TransactionList(transactions),
      ],
    );
  }
}
