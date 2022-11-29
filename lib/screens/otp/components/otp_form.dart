import 'package:flutter/material.dart';
import 'package:umart/components/custom_suffix_icon.dart';
import 'package:umart/components/default_button.dart';
import 'package:umart/components/form_error.dart';
import 'package:umart/components/no_account_text.dart';
import 'package:umart/screens/login_success/login_success.dart';
import 'package:umart/size_config.dart';

import '../../../constants.dart';

class OTPform extends StatefulWidget {
  const OTPform({super.key});

  @override
  State<OTPform> createState() => _OTPformState();
}

class _OTPformState extends State<OTPform> {
  //Focus Nodes to help mark the active Textform field
  FocusNode? pin2FocusNode;
  FocusNode? pin3FocusNode;
  FocusNode? pin4FocusNode;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    pin2FocusNode!.dispose();
    pin3FocusNode!.dispose();
    pin4FocusNode!.dispose();
  }

  //Function to check request the current focus of the textForm field
  void nextField(String value, FocusNode? focusNode) {
    if (value.length == 1) {
      focusNode!.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          SizedBox(height: SizeConfig.screenHeight * 0.15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  obscureText: true,
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 24),
                  decoration: otpInputDecoration,
                  onChanged: ((value) {
                    nextField(value, pin2FocusNode);
                  }),
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  obscureText: true,
                  focusNode: pin2FocusNode,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 24),
                  decoration: otpInputDecoration,
                  onChanged: ((value) {
                    nextField(value, pin3FocusNode);
                  }),
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  obscureText: true,
                  focusNode: pin3FocusNode,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 24),
                  decoration: otpInputDecoration,
                  onChanged: ((value) {
                    nextField(value, pin4FocusNode);
                  }),
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  obscureText: true,
                  focusNode: pin4FocusNode,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 24),
                  decoration: otpInputDecoration,
                  onChanged: ((value) {
                    if (value.length == 1) {
                      pin4FocusNode!.unfocus();
                    }
                  }),
                ),
              ),
            ],
          ),
  
        ],
      ),
    );
  }
}
