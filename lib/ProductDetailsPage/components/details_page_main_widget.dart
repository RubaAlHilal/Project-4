import 'package:flutter/material.dart';
import 'package:project_4/ProductDetailsPage/components/product_background_widget.dart';

class DetailsPageMainWidget extends StatelessWidget {
  const DetailsPageMainWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductBackgroundWidget(),
        Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Zeitwerk Date",
                            style: TextStyle(
                                fontSize: 24,
                                color: Color(0xff294475),
                                fontFamily: 'DMSerifText'),
                          ),
                          Text(
                            "₹3050",
                            style: TextStyle(
                                fontSize: 24, fontFamily: 'DMSerifText'),
                          ),
                        ],
                      ),
                      Spacer(),
                      Text("+"),
                      Text("1"),
                      Text("-"),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "product details ...........................................................................................................................",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
