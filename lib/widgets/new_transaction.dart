import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NewTransaction extends StatelessWidget {
  final titleController;
  final amountController;
  final addNewTransaction;

  NewTransaction(
    this.titleController,
    this.amountController,
    this.addNewTransaction,
  );

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
              ],
            ),
            FlatButton(
              child: Text('Add Transaction'),
              onPressed: () {
                addNewTransaction(
                  titleController.text,
                  int.parse(amountController.text),
                );
              },
              textColor: Colors.purple,
            )
          ],
        ),
      ),
    );
  }
}
