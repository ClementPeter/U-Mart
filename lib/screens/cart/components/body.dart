import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:umart/models/cart.dart';
import 'package:umart/screens/cart/components/card_item_card.dart';
import 'package:umart/size_config.dart';

//Main Body of Detail Page
class Body extends StatefulWidget {
  // final Product product;

  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: ListView.builder(
        itemCount: demoCarts.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(
              vertical: getProportionateScreenHeight(10),
            ),
            child: Dismissible(
              key: Key(demoCarts[index].product!.id.toString()),
              direction: DismissDirection.endToStart,
              background: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFE6E6),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    const Spacer(),
                    SvgPicture.asset("assets/icons/Trash.svg")
                  ],
                ),
              ),
              onDismissed: (direction) {
                setState(() {
                  demoCarts.removeAt(index);
                });
              },
              child: CartItemCard(cart: demoCarts[index]),
            ),
          );
        },
      ),
    );
  }
}
