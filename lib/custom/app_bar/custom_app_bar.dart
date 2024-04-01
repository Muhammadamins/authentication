import 'package:aaaaaa/core/utils/size_utils.dart';
import 'package:aaaaaa/theme/theme_helper.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    this.height,
    this.styleType,
    this.leadingWidth,
    this.leading,
    this.title,
    this.centerTitle,
    this.actions,
  }) : super(
          key: key,
        );

  final double? height;

  final Style? styleType;

  final double? leadingWidth;

  final Widget? leading;

  final Widget? title;

  final bool? centerTitle;

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height ?? 56.v,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        SizeUtils.width,
        height ?? 56.v,
      );
  _getStyle() {
    switch (styleType) {
      case Style.bgShadow_2:
        return Container(
          height: 56.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: appTheme.whiteA700,
            boxShadow: [
              BoxShadow(
                color: appTheme.black900.withOpacity(0.1),
                spreadRadius: 2.h,
                blurRadius: 2.h,
                offset: Offset(
                  0,
                  4,
                ),
              ),
            ],
          ),
        );
      case Style.bgFill_1:
        return Stack(
          children: [
            Container(
              height: 57.v,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: appTheme.whiteA700,
              ),
            ),
            Container(
              height: 1.v,
              width: double.maxFinite,
              margin: EdgeInsets.only(top: 56.v),
              decoration: BoxDecoration(
                color: appTheme.gray100,
              ),
            ),
          ],
        );
      case Style.bgShadow:
        return Container(
          height: 100.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: appTheme.whiteA700,
            boxShadow: [
              BoxShadow(
                color: appTheme.black900.withOpacity(0.16),
                spreadRadius: 2.h,
                blurRadius: 2.h,
                offset: Offset(
                  0,
                  0,
                ),
              ),
            ],
          ),
        );
      case Style.bgShadow_1:
        return Container(
          height: 56.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: appTheme.gray50,
            boxShadow: [
              BoxShadow(
                color: appTheme.black900.withOpacity(0.1),
                spreadRadius: 2.h,
                blurRadius: 2.h,
                offset: Offset(
                  0,
                  4,
                ),
              ),
            ],
          ),
        );
      case Style.bgFill:
        return Container(
          height: 1.v,
          width: double.maxFinite,
          margin: EdgeInsets.only(top: 56.v),
          decoration: BoxDecoration(
            color: appTheme.gray100,
          ),
        );
      default:
        return null;
    }
  }
}

enum Style {
  bgShadow_2,
  bgFill_1,
  bgShadow,
  bgShadow_1,
  bgFill,
}
