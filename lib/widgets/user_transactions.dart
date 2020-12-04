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
  final List<Transaction> _transactions = <Transaction>[
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

  void _addNewTransaction(String title, int amount) {
    final newTransaction = Transaction(
      title: title,
      amount: amount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );

    setState(() => _transactions.add(newTransaction));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(titleController, amountController, _addNewTransaction),
        TransactionList(_transactions),
      ],
    );
  }
}
