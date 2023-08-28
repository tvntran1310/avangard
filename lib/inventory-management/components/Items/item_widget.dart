import 'package:flutter/material.dart';
import 'package:namer_app/inventory-management/models/item-model.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget(this.itemModel, {super.key});

  final ItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Text(itemModel.name),
    );
  }
}
