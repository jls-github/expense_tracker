import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';

class Transaction {
  final String id;
  final String title;
  final int amount;
  final DateTime date;

  Transaction({
    @required this.id,
    @required this.title,
    @required this.amount,
    @required this.date,
  });

  String formattedAmount() {
    final formatter = new NumberFormat("#,##0.00", "en_US");
    return formatter.format(this.amount / 100);
  }
}
