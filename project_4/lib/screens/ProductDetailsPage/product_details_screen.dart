import 'package:flutter/material.dart';
import 'package:project_4/models/watch_model.dart';
import 'package:project_4/widgets/custom_button.dart';
import 'components/details_page_main_widget.dart';
import 'components/details_screen_app_bar.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key, required this.watch});

  final Watch watch;
  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 32.0),
        child: CustomButton(
          onPressedFunc: () {},
          content: "Add to Cart",
          hasIcon: true,
        ),
      ),
      appBar: detailsScreenAppBar(context: context),
      body: DetailsPageMainWidget(watch: widget.watch),
    );
  }
}
