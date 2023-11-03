import 'package:flutter/material.dart';

class AddressRow extends StatelessWidget {
  const AddressRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: 2,
      shrinkWrap: true,
      separatorBuilder: (context, index) => const SizedBox(height: 5),
      itemBuilder: (context, index) {
        return const Card(
          elevation: 2,
          shadowColor: Colors.grey,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Radio(value: 0, groupValue: [], onChanged: null),
                            Text("Home"),
                          ],
                        ),
                        Icon(Icons.mode_edit_outline_outlined),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: 220,
                          child: ListTile(
                              title: Text("2972 Westheimer Rd. Santa Ana, Illinois 85486")),
                        ),
                        Row(
                          children: [
                            Icon(Icons.phone_android_outlined),
                            Text("+61 2 4916 1349"),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
