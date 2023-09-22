import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

const uuid = Uuid();

enum Category { food, travel, leisure, work }

const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.sports_football,
  Category.work: Icons.work
};

class Expense {
  Expense(
      {required this.title,
      required this.math,
      required this.date,
      required this.category})
      : id = uuid.v4();
  final String id;
  final String title;
  final DateTime date;
  final double math;
  final Category category;

  String get formattedDate {
    return formatter.format(date);
  }
}
