import 'package:flutter/material.dart';

class ProductBackgroundWidget extends StatelessWidget {
  const ProductBackgroundWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.5,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.elliptical(550, 700),
                  topRight: Radius.elliptical(20, 55),
                  bottomLeft: Radius.circular(35),
                  bottomRight: Radius.circular(35)),
              color: Color(0xfff9f8f8)),
        ),
        const Positioned(
          top: 200,
          left: 185,
          child: Text('image'),
        ),
      ],
    );
  }
}
