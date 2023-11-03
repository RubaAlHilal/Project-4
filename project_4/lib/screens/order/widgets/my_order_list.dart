import 'package:flutter/material.dart';
import 'package:project_4/data/constants.dart';
import 'package:project_4/widgets/circle_icon.dart';

import 'add_remove_item.dart';
import 'item_image.dart';
import 'item_information.dart';

class MyOrderList extends StatelessWidget {
  const MyOrderList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "assets/images/my_order_watch1.png",
      "assets/images/my_order_watch2.png",
      "assets/images/my_order_watch3.png",
    ];

    List<String> names = [
      "Zeitwerk Date",
      "Chronograph Radio",
      "Eco-Drive Baracelet",
    ];
    List<String> description = [
      "It is a long established fact that a reader will be.",
      "It is a long established fact that a reader will be.",
      "It is a long established fact that a reader will be.",
    ];
    List<double> price = [
      3050,
      3100,
      4699,
    ];

    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: names.length,
        itemBuilder: (context, index) {
          return Dismissible(
            direction: DismissDirection.endToStart,
            key: UniqueKey(),
            background: Container(
              padding: const EdgeInsets.only(right: 16),
              alignment: Alignment.centerRight,
              color: Colors.grey,
              child: const Icon(
                Icons.delete,
                size: 30,
                color: Colors.red,
              ),
            ),
            onDismissed: (direction) {
              names.remove(names[index]);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  Expanded(flex: 2, child: ItemImage(images: images, index: index)),
                  Expanded(
                    flex: 3,
                    child: ItemInformation(
                        names: names, description: description, price: price, index: index),
                  ),
                  Expanded(
                      flex: 1,
                      child: AddRemoveItem(
                        price: price[index],
                      ))
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
