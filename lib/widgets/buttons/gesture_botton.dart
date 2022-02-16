import 'package:flutter/material.dart';
import 'package:mitc_support_work_app/shared/app_colors.dart';

class GestureButton extends StatelessWidget {
  final String text;
  final bool isBusy;
  final Color? color;
  final Function()? onTap;

  const GestureButton({
    Key? key,
    required this.isBusy,
    required this.text,
    this.color = kcPrimaryColor,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        child: isBusy
            ? const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Colors.white),
              )
            : Text(
                text,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
      ),
    );
  }
}
