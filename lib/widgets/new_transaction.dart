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

  void _onSubmitTransaction() {
    final title = titleController.text;
    final amount = int.parse(amountController.text);

    if (title.isEmpty || amount <= 0) {
      return;
    }
    addNewTransaction(title, amount);
  }

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
              decoration: InputDecoration(
                labelText: 'Title',
                suffixIcon: IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () => titleController.clear(),
                ),
              ),
              controller: titleController,
              onSubmitted: (_) => _onSubmitTransaction(),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Amount',
                suffixIcon: IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () => amountController.clear(),
                ),
              ),
              controller: amountController,
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
              ],
              onSubmitted: (_) => _onSubmitTransaction(),
            ),
            FlatButton(
              child: Text('Add Transaction'),
              onPressed: () => _onSubmitTransaction(),
              textColor: Colors.purple,
            )
          ],
        ),
      ),
    );
  }
}
