import 'package:flutter/material.dart';
import 'package:project_4/models/watch_model.dart';

import '../../widgets/custom_app_bar.dart';
import 'widgets/my_order_list.dart';
import '../../widgets/payment_details.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key, required this.watch}) : super(key: key);
  final Watch watch;

  @override
  State<OrderScreen> createState() => OrderScreenState();
}

class OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          customAppBar(title: "My Order", context: context, hasAction: true),
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: MyOrderList(
                watch: widget.watch,
              )),
          const Expanded(flex: 1, child: PaymentDetails()),
        ],
      ),
    );
  }
}
