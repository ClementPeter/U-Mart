import 'package:flutter/material.dart';
import 'package:umart/components/custom_suffix_icon.dart';
import 'package:umart/components/default_button.dart';
import 'package:umart/components/form_error.dart';
import 'package:umart/components/no_account_text.dart';
import 'package:umart/screens/forgot_password/components/forgot_password_form.dart';
import 'package:umart/screens/login_success/login_success.dart';
import 'package:umart/size_config.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
        ),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.15),
    
                Text(
                  "Please enter your email and we will send \nyou a link to return your account",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(14),
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.05),
                const ForgotPasswordForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                const NoAccountText()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

