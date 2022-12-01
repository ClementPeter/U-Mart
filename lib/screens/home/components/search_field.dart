import 'package:flutter/material.dart';
import 'package:umart/constants.dart';
import 'package:umart/size_config.dart';

//Builds the Search field
class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: SizeConfig.screenWidth * 0.6,
    
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: kSecondaryColor.withOpacity(0.1),
      ),
      child: TextField(
        onChanged: (value) {
          print(value);
        },
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: "Search Product",
          prefixIcon:const Icon(Icons.search, color: kPrimaryColor),
          contentPadding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(5),
            vertical: getProportionateScreenWidth(10),
          ),
        ),
      ),
    );
  }
}
