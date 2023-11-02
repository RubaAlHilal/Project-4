import 'package:flutter/material.dart';
import 'package:project_4/data/constants.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        PaymentDetailsCost(
          leadingText: "Item Total",
          trailingText: "10,849.00",
        ),
        PaymentDetailsCost(
          leadingText: "Discount",
          trailingText: "849.00",
        ),
        PaymentDetailsCost(
          leadingText: "Delivery Free",
          trailingText: "Free",
          color: Colors.green,
        ),
        Divider(
          thickness: 1.5,
          indent: 20,
          endIndent: 20,
        ),
        PaymentDetailsCost(
          leadingText: "Grand Total",
          trailingText: "10,000.00",
        ),
      ],
    );
  }
}

class PaymentDetailsCost extends StatelessWidget {
  const PaymentDetailsCost({
    super.key,
    required this.leadingText,
    required this.trailingText,
    this.color,
  });

  final String leadingText;
  final String trailingText;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        leadingText,
        style: TextStyle(fontSize: 16, color: color ?? Colors.black),
      ),
      trailing: Text("$rupeeIcon$trailingText",
          style: TextStyle(fontSize: 16, color: color ?? Colors.black)),
    );
  }
}
