import 'package:flutter/material.dart';
import 'package:mitc_support_work_app/widgets/buttons/gesture_botton.dart';

import '../../shared/app_colors.dart';
import '../../shared/ui_helpers.dart';
import '../../widgets/box_text.dart';
import 'package:auth_buttons/auth_buttons.dart';

class AuthenticationLayout extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final String? mainButtonTitle;
  final Widget? form;
  final bool showTermsText;
  final void Function()? onMainButtonTapped;
  final void Function()? onCreateAccountTapped;
  final void Function()? onForgotPassword;
  final void Function()? onBackPressed;
  final void Function()? onSignInWithApple;
  final void Function()? onSignInWithGoogle;
  final String? validationMessage;
  final bool busy;

  const AuthenticationLayout({
    Key? key,
    this.title,
    this.subtitle,
    this.mainButtonTitle,
    this.form,
    this.onMainButtonTapped,
    this.onCreateAccountTapped,
    this.onForgotPassword,
    this.onBackPressed,
    this.onSignInWithApple,
    this.onSignInWithGoogle,
    this.validationMessage,
    this.showTermsText = false,
    this.busy = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: ListView(
        children: [
          verticalSpaceMedium,
          Text(
            title!,
            style: const TextStyle(fontSize: 34),
          ),
          verticalSpaceSmall,
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: screenWidthPercentage(context, percentage: 0.7),
              child: BoxText.body(
                subtitle!,
                color: Colors.grey.shade400,
              ),
            ),
          ),
          verticalSpaceRegular,
          form!,
          verticalSpaceRegular,
          if (onForgotPassword != null)
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                  onTap: onForgotPassword,
                  child: BoxText.body(
                    'Forget Password?',
                  )),
            ),
          verticalSpaceRegular,
          if (validationMessage != null)
            BoxText.body(
              validationMessage!,
              color: Colors.red,
            ),
          if (validationMessage != null) verticalSpaceRegular,
          GestureButton(
            isBusy: busy,
            text: mainButtonTitle!,
            onTap: onMainButtonTapped,
          ),
          verticalSpaceRegular,
          if (onCreateAccountTapped != null)
            GestureDetector(
              onTap: onCreateAccountTapped,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Don\'t have an account?'),
                  horizontalSpaceTiny,
                  Text(
                    'Create an account',
                    style: TextStyle(
                      color: kcPrimaryColor,
                    ),
                  )
                ],
              ),
            ),
          if (showTermsText)
            BoxText.body(
              'By signing up you agree to our terms, conditions and privacy policy.',
            ),
          verticalSpaceRegular,
          Align(
              alignment: Alignment.center,
              child: BoxText.body(
                'Or',
              )),
          verticalSpaceRegular,
          GoogleAuthButton(
            onPressed: onSignInWithGoogle ?? () {},
            text: 'CONTINUE WITH GOOGLE',
            style: const AuthButtonStyle(
              buttonColor: Color(0xff4285F4),
              iconSize: 24,
              iconBackground: Colors.white,
              buttonType: AuthButtonType.secondary,
              height: 50,
              textStyle: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
