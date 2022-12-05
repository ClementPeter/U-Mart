import 'package:flutter/material.dart';
import 'package:umart/components/rounded_icon_btn.dart';
import 'package:umart/size_config.dart';
import '../../../constants.dart';
import '../../../models/product.dart';

class ColorDots extends StatefulWidget {
  const ColorDots({
    Key? key,
    required this.product,
    // required this.isSelected,
  }) : super(key: key);

  final Product product;

  @override
  State<ColorDots> createState() => _ColorDotsState();
}

class _ColorDotsState extends State<ColorDots> {
  int isSelectedColor = 0;
  int _counter = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(40)),
      child: Row(
        children: [
          ...List.generate(
            widget.product.colors.length,
            (index) => buildColorDot(widget.product.colors[index], index),
          ),
          const Spacer(),
          RoundedIconBtn(
            iconData: Icons.remove,
            press: () {
              setState(() {
                if (_counter < 1 || _counter > 1) {
                  _counter--;
                }
                ;
              });
            },
          ),
          SizedBox(width: getProportionateScreenWidth(10)),
          Text(
            "$_counter",
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(width: getProportionateScreenWidth(10)),
          RoundedIconBtn(
            iconData: Icons.add,
            showShadow: true,
            press: () {
              setState(() {
                _counter++;
              });
            },
          ),
        ],
      ),
    );
  }

  GestureDetector buildColorDot(Color color, int index) {
    return GestureDetector(
      onTap: (() {
        setState(() {
          isSelectedColor = index;
        });
      }),
      child: Container(
        margin: const EdgeInsets.only(right: 2),
        padding: EdgeInsets.all(getProportionateScreenWidth(8)),
        height: getProportionateScreenWidth(35),
        width: getProportionateScreenWidth(35),
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
            color:
                isSelectedColor == index ? kPrimaryColor : Colors.transparent,
          ),
          shape: BoxShape.circle,
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
