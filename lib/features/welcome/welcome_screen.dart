import 'package:car_app/core/assets/app_assets.dart';
import 'package:car_app/core/extensions/context_extension.dart';
import 'package:car_app/core/theme/app_colors.dart';
import 'package:car_app/core/theme/app_text_styles.dart';
import 'package:car_app/features/welcome/welcome_button.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(AppAssets.welcomeImage),
          SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: context.mq.height / 4,
                ),
                Image.asset(
                  AppAssets.welcomeLogo,
                  scale: 3,
                ),
                SizedBox(
                  height: context.mq.height / 3,
                ),
                Text(
                  'RENT YOUR DREAM CAR FROM',
                  style: AppTextStyles.s24w600
                      .copyWith(color: AppColors.welcomeText.withOpacity(0.81)),
                ),
                Text(
                  'THE BEST COMPANY',
                  style: AppTextStyles.s24w600
                      .copyWith(color: AppColors.welcomeText.withOpacity(0.81)),
                ),
                SizedBox(
                  height: context.mq.height / 10,
                ),
                WelcomeButton(onPressed: () {}),
              ],
            ),
          )
        ],
      ),
    );
  }
}
