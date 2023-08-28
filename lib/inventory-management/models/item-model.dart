import 'package:uuid/uuid.dart';

// ignore_for_file: file_names

const uuid = Uuid();

enum Category { produce, export, work }

class ItemModel {
  final String id;
  final String name;
  final int quantity;
  final double price;
  final DateTime date;
  final Category category;

  ItemModel({
    required this.name,
    required this.quantity,
    required this.price,
    required this.date,
    required this.category,
  }) : id = uuid.v4();
}
