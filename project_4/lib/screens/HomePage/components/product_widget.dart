import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    super.key,
  });

  // final String productName, productImage;
  // final int productPrice;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Stack(
        children: [
          Container(
            width: 225,
            height: 350,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.elliptical(25, 55),
                    topLeft: Radius.elliptical(300, 550),
                    bottomLeft: Radius.circular(35),
                    bottomRight: Radius.circular(35)),
                color: Color(0xfff9f8f8)),
          ),
          const Positioned(
            top: 150,
            left: 95,
            child: Text('image'),
          ),
          const Positioned(
            top: 260,
            left: 95,
            child: Column(
              children: [Text('image'), Text('image')],
            ),
          )
        ],
      ),
    );
  }
}
