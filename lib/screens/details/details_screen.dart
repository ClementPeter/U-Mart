import 'package:flutter/material.dart';
import 'package:umart/screens/details/components/body.dart';
import 'package:umart/size_config.dart';

import '../../models/product.dart';

//Forgot Password Screen
class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);
  static String routeName = "/details";

  @override
  Widget build(BuildContext context) {
    //passing Data into Details Screen with modal route
    final ProductDetailsArguments args =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    SizeConfig()
        .init(context); //Size config must be called on every starting screen
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F9),
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(AppBar().preferredSize.height),
      //   child: CustomAppBar(rating: args.product.rating),
      // ),
      body: Body(
        product: args.product,
      ),
    );
  }
}

//Used to pass our product contents form home screen to detailed screen
class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}
