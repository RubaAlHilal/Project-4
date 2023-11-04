import 'package:flutter/material.dart';

PreferredSizeWidget detailsScreenAppBar({required BuildContext context}) {
  return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_rounded, color: Colors.black, size: 20),
          onPressed: () {
            Navigator.pop(context);
          }),

      // Icon(
      //   Icons.arrow_back_ios_rounded,
      //   color: Colors.black,
      //   size: 25,
      // ),
      actions: const [
        Icon(
          Icons.shopping_basket_outlined,
          color: Colors.black,
          size: 25,
        ),
        SizedBox(
          width: 12,
        )
      ],
      title: const Text(
        "product name",
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
      ));
}
