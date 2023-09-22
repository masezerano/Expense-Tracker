import 'package:flutter/material.dart';
import 'package:expens_tracker/widget/expenses.dart';

void main() {
  runApp(
    MaterialApp(
      
      theme: ThemeData(useMaterial3: true),
      home: const Expenses(),
    ),
  );
}
