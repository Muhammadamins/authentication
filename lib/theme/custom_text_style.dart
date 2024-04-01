import 'package:aaaaaa/core/utils/size_utils.dart';
import 'package:aaaaaa/theme/theme_helper.dart';
import 'package:flutter/material.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeBluegray800 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray800,
        fontSize: 18.fSize,
      );
  static get bodyLargeGray900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray900,
      );
  static get bodyLargeOnPrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodyLargeRobotoGray90002 =>
      theme.textTheme.bodyLarge!.roboto.copyWith(
        color: appTheme.gray90002,
      );
  static get bodyMediumBluegray200 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray200,
      );
  static get bodyMediumLatoBluegray200 =>
      theme.textTheme.bodyMedium!.lato.copyWith(
        color: appTheme.blueGray200,
      );
  static get bodyMediumLatoOnPrimary =>
      theme.textTheme.bodyMedium!.lato.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodyMediumLatoWhiteA700 =>
      theme.textTheme.bodyMedium!.lato.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyMediumNunitoBluegray200 =>
      theme.textTheme.bodyMedium!.nunito.copyWith(
        color: appTheme.blueGray200,
      );
  static get bodyMediumNunitoGray90001 =>
      theme.textTheme.bodyMedium!.nunito.copyWith(
        color: appTheme.gray90001,
      );
  static get bodyMediumOnPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmallRobotoPrimary =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 10.fSize,
      );
  static get bodySmallRobotoWhiteA700 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.whiteA700,
        fontSize: 10.fSize,
      );
  // Headline text style
  static get headlineMediumBluegray800 =>
      theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.blueGray800,
      );
  static get headlineMediumRed400 => theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.red400,
      );
  // Label style
  static get labelLargeLato => theme.textTheme.labelLarge!.lato;
  static get labelLargeLatoGray800 => theme.textTheme.labelLarge!.lato.copyWith(
        color: appTheme.gray800.withOpacity(0.42),
      );
  static get labelLargeLatoPrimary => theme.textTheme.labelLarge!.lato.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelLargeOnPrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeOnPrimary_1 => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSemiBold => theme.textTheme.labelLarge!.copyWith(
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  // Title text style
  static get titleLargeSemiBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBluegray200 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray200,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumGray90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90001,
        fontSize: 16.fSize,
      );
  static get titleMediumLato => theme.textTheme.titleMedium!.lato.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumLatoGray800 =>
      theme.textTheme.titleMedium!.lato.copyWith(
        color: appTheme.gray800,
        fontSize: 16.fSize,
      );
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumRobotoBluegray200 =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        color: appTheme.blueGray200,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumSecondaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumSecondaryContainerMedium =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBluegray300 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray300,
      );
  static get titleSmallLato => theme.textTheme.titleSmall!.lato.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleSmallLatoBluegray300 =>
      theme.textTheme.titleSmall!.lato.copyWith(
        color: appTheme.blueGray300,
      );
  static get titleSmallLatoGray800 => theme.textTheme.titleSmall!.lato.copyWith(
        color: appTheme.gray800.withOpacity(0.51),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallLatoWhiteA700 =>
      theme.textTheme.titleSmall!.lato.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallLatoWhiteA700Bold =>
      theme.textTheme.titleSmall!.lato.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallNunitoGray90001 =>
      theme.textTheme.titleSmall!.nunito.copyWith(
        color: appTheme.gray90001,
      );
  static get titleSmallNunitoff1f201b =>
      theme.textTheme.titleSmall!.nunito.copyWith(
        color: Color(0XFF1F201B),
      );
  static get titleSmallNunitoffafb6c4 =>
      theme.textTheme.titleSmall!.nunito.copyWith(
        color: Color(0XFFAFB6C4),
      );
  static get titleSmallWhiteA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
      );
}

extension on TextStyle {
  TextStyle get lato {
    return copyWith(
      fontFamily: 'Lato',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get barlow {
    return copyWith(
      fontFamily: 'Barlow',
    );
  }

  TextStyle get nunito {
    return copyWith(
      fontFamily: 'Nunito',
    );
  }
}
