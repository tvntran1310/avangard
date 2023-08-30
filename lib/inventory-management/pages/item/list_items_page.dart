import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:namer_app/inventory-management/components/navigation_drawer_widget.dart';
import 'package:namer_app/inventory-management/models/item_model.dart';
import 'package:namer_app/inventory-management/pages/item/item_detail_page.dart';
import 'package:namer_app/inventory-management/utils/widget-utils.dart';

class ListItemsPage extends StatefulWidget {
  const ListItemsPage({super.key});

  @override
  State<ListItemsPage> createState() => _ListItemsPageState();
}

class _ListItemsPageState extends State<ListItemsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appbar
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

      // page / list items
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 5.0,
          ),
          child: GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ItemDetailPage(
                  listItems[index],
                ),
              ),
            ),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // image
                    Image.asset(
                      listItems[index].imagePath,
                      height: 40,
                      width: 40,
                      fit: BoxFit.contain,
                    ),

                    // name + decription
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          listItems[index].name,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          listItems[index].description,
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                    // date + quantity
                    Column(
                      children: [
                        TextWidget(
                          text: (convertDate(listItems[index].date)).toString(),
                          fontSize: 15,
                          color: Colors.black,
                        ),
                        TextWidget(
                          text: 'SL: ${(listItems[index].quantity).toString()}',
                          fontSize: 15,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

convertDate(date) {
  final DateTime now = DateTime.now();
  final DateFormat formatter = DateFormat('yyyy-MM-dd');
  return formatter.format(now);
}
