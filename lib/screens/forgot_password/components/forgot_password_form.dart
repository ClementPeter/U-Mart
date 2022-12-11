import 'package:flutter/material.dart';
import 'package:umart/components/custom_suffix_icon.dart';
import 'package:umart/components/default_button.dart';
import 'package:umart/components/form_error.dart';
import 'package:umart/screens/login_success/login_success.dart';
import 'package:umart/size_config.dart';

import '../../../constants.dart';

//Builds the Form  for forgot password UI

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({Key? key}) : super(key: key);
  @override
  State<ForgotPasswordForm> createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final _formKey = GlobalKey<FormState>();

  final List<String?> errors = []; //List to hold errors
  String? email; //Email input

  //method to add errors
  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  //method to remove errors
  void removeError({String? error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  //Toggle the show password  field
  bool isShowPassword = true;

  showPassword() {
    setState(() {
      isShowPassword = !isShowPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            onSaved: (newValue) => email = newValue,
            onChanged: (value) {
              if (value.isNotEmpty) {
                removeError(error: kEmailNullError);
              } else if (emailValidatorRegExp.hasMatch(value)) {
                removeError(error: kInvalidEmailError);
              }
              return null;
            },
            validator: (value) {
              if (value!.isEmpty) {
                addError(error: kEmailNullError);
                return "";
              } else if (!emailValidatorRegExp.hasMatch(value)) {
                addError(error: kInvalidEmailError);
                return "";
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: "Email",
              labelStyle: TextStyle(color: kPrimaryColor),
              hintText: "Enter your Email",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: InkWell(
                borderRadius: BorderRadius.circular(30),
                onTap: showPassword,
                child: const CustomSuffixIcon(svgIcon: "assets/icons/Lock.svg"),
              ),
            ),
          ),
          FormError(errors: errors), //Displays form Error as a ui widget
          SizedBox(height: SizeConfig.screenHeight * 0.1),
          DefaultButton(
            text: "Continue",
            press: () {
              Navigator.pushNamed(context, LoginSuccessScreen.routeName);
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                // if all are valid then go to success screen
                // KeyboardUtil.hideKeyboard(context);
                // Navigator.pushNamed(context, LoginSuccessScreen.routeName);
              }
            },
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.05),
        ],
      ),
    );
  }
}
