import 'package:flutter/material.dart';
import 'package:mitc_support_work_app/widgets/profile_image.dart';

import '../../shared/app_colors.dart';
import '../../shared/ui_helpers.dart';
import '../../widgets/box_text.dart';

class UserdataLayout extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final String? mainButtonTitle;
  final Widget? form;
  final void Function()? onMainButtonTapped;
  final void Function()? onBackPressed;
  final String? validationMessage;
  final bool busy;

  const UserdataLayout({
    Key? key,
    this.title,
    this.subtitle,
    this.mainButtonTitle,
    this.form,
    this.onMainButtonTapped,
    this.onBackPressed,
    this.validationMessage,
    this.busy = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ProfileImage(),
        verticalSpaceMedium,
        if (title != null)
          Column(
            children: [
              verticalSpaceMedium,
              Text(
                title!,
                style: const TextStyle(fontSize: 34),
              ),
            ],
          ),
        if (subtitle != null)
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
        form!,
        verticalSpaceRegular,
        if (validationMessage != null)
          BoxText.body(
            validationMessage!,
            color: Colors.red,
          ),
        if (validationMessage != null) verticalSpaceRegular,
        GestureDetector(
          onTap: onMainButtonTapped,
          child: Container(
            width: double.infinity,
            height: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: kcPrimaryColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: busy
                ? const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(Colors.white),
                  )
                : Text(
                    mainButtonTitle!,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
          ),
        ),
        verticalSpaceRegular,
      ],
    );
  }
}
