import 'package:flutter/material.dart';

import 'package:project_4/models/watch_model.dart';

import 'package:project_4/screens/NavigationBar/navigation_bar_widget.dart';
import 'package:project_4/screens/check_out/check_out_screen.dart';
import 'package:project_4/widgets/custom_button.dart';


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

      appBar: customAppBar(
          title: "My Order",
          context: context,
          hasAction: true,
          onPressedFunc: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => const BottomNavBar()));
          }),
      body: WillPopScope(
        onWillPop: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => const BottomNavBar()));
          return Future.value(true);
        },
        child: const Column(
          children: [
            Expanded(flex: 3, child: MyOrderList()),
            Expanded(flex: 2, child: PaymentDetails()),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomButton(
        content: 'Checkout',
        hasIcon: false,
        onPressedFunc: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const CheckOutScreen()));
        },

      ),
    );
  }
}
