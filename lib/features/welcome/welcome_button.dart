import 'package:car_app/core/theme/app_colors.dart';
import 'package:car_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class WelcomeButton extends StatelessWidget {
  const WelcomeButton({
    required this.onPressed,
    super.key,
  });

  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 63),
          backgroundColor: AppColors.welcomeButton),
      onPressed: onPressed,
      child: Text(
        'Get Started',
        selectionColor: const Color(0xffC64949),
        style: AppTextStyles.s20w800.copyWith(color: AppColors.welcomeText),
      ),
    );
  }
}
