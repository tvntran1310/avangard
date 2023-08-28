// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:uuid/uuid.dart';

// const uuid = Uuid();

class ItemModel {
  final String id;
  final String name;
  final String description;
  final String imagePath;
  final int quantity;
  final DateTime date;

  ItemModel({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.quantity,
    required this.date,
  }) : id = Uuid().v4();
}

List<ItemModel> listItems = List.generate(
  10,
  (index) => ItemModel(
    name: 'Item ${index + 1}',
    description: 'description ${index + 1}',
    imagePath: 'lib/images/thaco/shopping-cart-with-items.png',
    quantity: 2,
    date: DateTime.now(),
  ),
);
