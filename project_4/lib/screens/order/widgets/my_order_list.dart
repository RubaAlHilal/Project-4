import 'package:flutter/material.dart';
import 'package:project_4/data/constants.dart';
import 'package:project_4/data/global_data.dart';
import 'package:project_4/models/watch_model.dart';
import 'package:project_4/screens/order/order_screen.dart';
import 'package:project_4/widgets/circle_icon.dart';

class MyOrderList extends StatefulWidget {
  const MyOrderList({Key? key, required this.watch}) : super(key: key);

  final Watch watch;

  @override
  State<MyOrderList> createState() => _MyOrderListState();
}

class _MyOrderListState extends State<MyOrderList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: cartList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                Expanded(
                    flex: 2,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * .24,
                          height: MediaQuery.of(context).size.height * .145,
                          decoration: const BoxDecoration(
                              color: Color(0xFFF7F6F6),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                  topLeft: Radius.circular(60))),
                        ),
                        Positioned(
                          right: 33,
                          top: -23,
                          child: Image.asset(
                            fit: BoxFit.cover,
                            cartList[index].image,
                            scale: 5,
                          ),
                        ),
                      ],
                    )),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        cartList[index].name,
                        style: const TextStyle(
                            color: Color(0xFF233B66),
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        cartList[index].description,
                        style: const TextStyle(color: Color(0xFF847F7F)),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        "$rupeeIcon${cartList[index].price}",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      CircleIcon(
                          iconData: Icons.add,
                          onPressedFunc: () {
                            widget.watch.count = widget.watch.count! + 1;
                            grandTotal += widget.watch.price;

                            context
                                .findAncestorStateOfType<OrderScreenState>()!
                                .setState(() {});
                          }),
                      Text(
                        cartList[index].count.toString(),
                        style: const TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w400),
                      ),
                      CircleIcon(
                        iconData: Icons.remove,
                        onPressedFunc: () {
                          if (widget.watch.count! > 1) {
                            widget.watch.count = widget.watch.count! - 1;
                            grandTotal -= widget.watch.price;
                            setState(() {});
                          } else if (widget.watch.count! == 1) {
                            widget.watch.count = 0;
                            grandTotal = grandTotal -
                                widget.watch.price * widget.watch.count!;
                            cartList.remove(widget.watch);
                            //state update
                            context
                                .findAncestorStateOfType<OrderScreenState>()!
                                .setState(() {});
                          }
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
