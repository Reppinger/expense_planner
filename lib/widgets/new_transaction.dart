import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function _addTransaction;

  NewTransaction(this._addTransaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
            ),
            FlatButton(
              child: Text('Add Transaction'),
              onPressed: () {
                _addTransaction(
                    titleController.text, double.parse(amountController.text));
              },
              textColor: Colors.purple,
            )
          ],
        ),
      ),
    );
  }
}