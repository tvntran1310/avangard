import 'package:flutter/material.dart';
import 'package:namer_app/inventory-management/models/item_model.dart';
import 'package:namer_app/inventory-management/utils/widget-utils.dart';

class ItemDetailPage extends StatelessWidget {
  const ItemDetailPage(this.item, {super.key});

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextWidget(text: item.name),
      ),
      body: Column(
        children: [
          TextWidget(
            text: 'text',
          ),
        ],
      ),
    );
  }
}
