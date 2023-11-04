import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:project_4/data/global_data.dart';
import 'package:project_4/widgets/circle_icon.dart';

class AddRemoveItem extends StatelessWidget {
  const AddRemoveItem({
    super.key,
    required this.price,
  });

  final double price;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //TODO: ITEM COUNT
        CircleIcon(
            iconData: Icons.remove,
            onPressedFunc: () {
              itemsTotal.value -= price;
              grandTotal.value = (itemsTotal.value - discount);
            }),
        const Text(
          "1",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
        ),
        CircleIcon(
            iconData: Icons.add,
            onPressedFunc: () {
              itemsTotal.value += price;
              grandTotal.value = (itemsTotal.value - discount);
            }),
      ],
    );
  }
}
