import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:umart/size_config.dart';

//class that generates preset errors for Form
class FormError extends StatelessWidget {
  //takes in List of error as a constructor
  const FormError({Key? key, required this.errors}) : super(key: key);

  //we pass the list our empty list error on every page we need it to show ; meaning we can have more than 1 error underneath the textfield
  final List<String?> errors;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
      child: Column(
        children: List.generate(
          errors.length,
          (index) => formErrorText(
            error: errors[index], //Error Input is taken here
          ),
        ),
      ),
    );
  }

  //Returns error svg logo and error text (from list); Error Text from constant file
  Column formErrorText({required String? error}) {
    return Column(
      children: [
        Row(
          children: [
            SvgPicture.asset(
              "assets/icons/Error.svg",
              height: getProportionateScreenWidth(12),
              width: getProportionateScreenWidth(12),
            ),
            SizedBox(width: getProportionateScreenWidth(10)),
            Text(error!),
          ],
        ),
        SizedBox(height: getProportionateScreenHeight(5)),
      ],
    );
  }
}
