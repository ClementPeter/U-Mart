import 'package:flutter/material.dart';
import 'package:umart/components/custom_suffix_icon.dart';
import 'package:umart/components/default_button.dart';
import 'package:umart/components/form_error.dart';
import 'package:umart/constants.dart';
import 'package:umart/screens/complete_profle/components/complete_profile_form.dart';
import 'package:umart/screens/login_success/login_success.dart';

// import 'package:umart/components/social_card.dart';
import 'package:umart/components/social_card.dart';
import 'package:umart/screens/sign_up/components/sign_up_form.dart';

import '../../../size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              Text("Complete Profile Account", style: headingStyle),
              const Text(
                "Complete your details or continue\nwith social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              const CompleteProfileForm(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.1,
              ),
       
              Text(
                'By continuing your confirm that you agree \nwith our Term and Condition',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.caption,
              )
            ],
          ),
        ),
      ),
    );
  }
}
