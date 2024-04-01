import 'package:aaaaaa/core/utils/size_utils.dart';
import 'package:aaaaaa/custom/custom_elevated_button.dart';
import 'package:aaaaaa/theme/custom_button_style.dart';
import 'package:aaaaaa/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppbarTitleButton extends StatelessWidget {
  AppbarTitleButton({
    Key? key,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomElevatedButton(
          height: 57.v,
          width: double.maxFinite,
          text: "Profil",
          buttonStyle: CustomButtonStyles.fillWhiteA,
          buttonTextStyle: CustomTextStyles.titleMediumGray90001,
        ),
      ),
    );
  }
}
