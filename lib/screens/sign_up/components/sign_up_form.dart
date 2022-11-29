import 'package:flutter/material.dart';
import 'package:umart/components/custom_suffix_icon.dart';
import 'package:umart/components/default_button.dart';
import 'package:umart/components/form_error.dart';
import 'package:umart/constants.dart';
import 'package:umart/screens/complete_profle/complete_profile.dart';
import 'package:umart/screens/login_success/login_success.dart';

import '../../../size_config.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>(); //key  to control form
  //Sign Up screen input variables- Email, Password ,Confirm Password
  String? email;
  String? password;
  String? confirm_Password;
  //
  bool? remember = false; // Controlling check box state
  final List<String?> errors = []; //Add Form Error to list and display in UI

  //Add Individual errors  to Empty list
  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  //Remove Individual errors  to Empty list
  void removeError({String? error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildConfirmPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(8)),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(20)),
          DefaultButton(
            text: "Continue",
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                // if all are valid then go to success splash screen
                //KeyboardUtil.hideKeyboard(context);
                Navigator.pushNamed(context, CompleteProfileScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  //Email Textfield
  TextFormField buildEmailFormField() {
    return TextFormField(
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
      decoration: const InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        labelStyle: TextStyle(color: kPrimaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }

  // password textform field
  TextFormField buildPasswordFormField() {
    return TextFormField(
      //obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        password = value;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return ""; //Allows UI to give a smudging effect
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      // onEditingComplete: (){

      // },
      decoration: const InputDecoration(
        labelText: "Password",
        labelStyle: TextStyle(color: kPrimaryColor),
        hintText: "Enter your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  //confirm password textform field
  TextFormField buildConfirmPasswordFormField() {
    return TextFormField(
      //obscureText: true,
      onSaved: (newValue) => confirm_Password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.isNotEmpty && password == confirm_Password) {
          removeError(error: kMatchPassError);
        }
        confirm_Password = value;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return ""; //Allows UI to give a smudging effect
        } else if (password != value) {
          addError(error: kMatchPassError);
          return ""; //Allows UI to give a smudging effect
        }
        return null;
      },
      // onEditingComplete: (){

      // },
      decoration: const InputDecoration(
        labelText: "Confirm Password",
        labelStyle: TextStyle(color: kPrimaryColor),
        hintText: "Re-enter your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }
}
