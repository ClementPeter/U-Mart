import 'package:flutter/material.dart';

import 'package:umart/size_config.dart';
import '../../../constants.dart';
import '../../../models/product.dart';

//Shows a preview of Image and smaller views of product image
class ProductImages extends StatefulWidget {
  const ProductImages({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  State<ProductImages> createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selectedImage = 0; //toggles individual image in products models
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(200),
          child: AspectRatio(
            aspectRatio: 1,
            child: Hero(
              tag:widget.product.id.toString(),
              child: Image.asset(widget.product.images[selectedImage]),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              widget.product.images.length,
              (index) => buildSmallPreview(index),
            )
          ],
        )
      ],
    );
  }

//Build small view layout of the product
  GestureDetector buildSmallPreview(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: AnimatedContainer(
        duration: kAnimationDuration,
        margin: EdgeInsets.only(right: getProportionateScreenWidth(15)),
        padding: EdgeInsets.all(getProportionateScreenWidth(8)),
        height: getProportionateScreenHeight(48),
        width: getProportionateScreenWidth(48),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color:
                  selectedImage == index ? kPrimaryColor : Colors.transparent),
        ),
        child: Image.asset(widget.product.images[index]),
      ),
    );
  }
}
