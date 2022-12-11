import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:umart/components/default_button.dart';
import 'package:umart/constants.dart';
import '../../../size_config.dart';

//BOttom nav bar chceckout card in cart screen
class CheckOutCard extends StatelessWidget {
  const CheckOutCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(15),
        vertical: getProportionateScreenWidth(10),
      ),
      //height: 170,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: const Color.fromARGB(255, 79, 61, 61).withOpacity(0.15),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min, //set the bottom nav bar to minimum height
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                height: getProportionateScreenWidth(35),
                width: getProportionateScreenWidth(35),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: SvgPicture.asset("assets/icons/receipt.svg"),
              ),
              const Spacer(),
              const Text("Add voucher code"),
              const SizedBox(width: 10),
              const Icon(
                Icons.arrow_forward_ios,
                color: kTextColor,
              )
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text.rich(
                TextSpan(
                  text: "Total\n",
                  children: [
                    TextSpan(
                      text: "\$337.15",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(190),
                child: DefaultButton(
                  text: "Check Out",
                  press: () {},
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
