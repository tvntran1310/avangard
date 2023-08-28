import 'package:flutter/material.dart';
import 'package:namer_app/inventory-management/components/Items/item_widget.dart';

import '../models/item-model.dart';

class ListItems extends StatelessWidget {
  const ListItems({
    super.key,
    required this.listItems,
  });

  final List<ItemModel> listItems;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listItems.length,
      itemBuilder: (context, index) => ItemWidget(listItems[index]),
    );
  }
}
