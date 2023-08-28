import 'package:flutter/material.dart';

import 'package:namer_app/inventory-management/components/navigation_drawer_widget.dart';
import 'package:namer_app/inventory-management/pages/list-items-page.dart';
import 'package:namer_app/inventory-management/utils/widget-utils.dart';

import '../models/item-model.dart';

class ItemPage extends StatefulWidget {
  const ItemPage({super.key});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  final List<ItemModel> _listItems = [
    ItemModel(
      name: 'Item 01',
      quantity: 2,
      price: 2000,
      date: DateTime.now(),
      category: Category.work,
    ),
    ItemModel(
      name: 'Item 02',
      quantity: 1,
      price: 22000,
      date: DateTime.now(),
      category: Category.export,
    ),
    ItemModel(
      name: 'Item 03',
      quantity: 4,
      price: 20000,
      date: DateTime.now(),
      category: Category.produce,
    ),
    ItemModel(
      name: 'Item 04',
      quantity: 1,
      price: 201100,
      date: DateTime.now(),
      category: Category.export,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: TextWidget(
          text: 'List Items',
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Column(
        children: [
          const Text('data'),
          ListItems(listItems: _listItems),
        ],
      ),
    );
  }
}
