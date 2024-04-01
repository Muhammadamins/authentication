import 'package:aaaaaa/core/utils/image_constant.dart';
import 'package:aaaaaa/core/utils/size_utils.dart';
import 'package:aaaaaa/custom/app_bar/appbar_title_image.dart';
import 'package:aaaaaa/custom/app_bar/custom_app_bar.dart';
import 'package:aaaaaa/custom/custom_bottom_bar.dart';
import 'package:aaaaaa/custom/custom_elevated_button.dart';
import 'package:aaaaaa/custom/custom_image_view.dart';
import 'package:aaaaaa/custom/custom_outlined_button.dart';
import 'package:aaaaaa/custom/custom_text_form_field.dart';
import 'package:aaaaaa/routes/app_routes.dart';
import 'package:aaaaaa/theme/custom_button_style.dart';
import 'package:aaaaaa/theme/custom_text_style.dart';
import 'package:aaaaaa/theme/theme_helper.dart';
import 'package:flutter/material.dart';

class RegisterSignupScreen extends StatelessWidget {
  RegisterSignupScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: SizedBox(
              height: SizeUtils.height,
              child: Form(
                key: _formKey,
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.h,
                    vertical: 16.v,
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 14.v),
                      Text(
                        "Ro’yxatdan o’tish",
                        style: theme.textTheme.titleLarge,
                      ),
                      SizedBox(height: 36.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Text(
                            "Telefon raqami",
                            style: CustomTextStyles.titleSmallLatoBluegray300,
                          ),
                        ),
                      ),
                      SizedBox(height: 7.v),
                      _buildPhoneNumber(context),
                      SizedBox(height: 21.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Text(
                            "Maxfiylik kaliti",
                            style: CustomTextStyles.titleSmallLatoBluegray300,
                          ),
                        ),
                      ),
                      SizedBox(height: 7.v),
                      _buildPassword(context),
                      SizedBox(height: 52.v),
                      _buildDavomEtish(context),
                      Spacer(),
                      _buildKirish(context),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 100.v,
      centerTitle: true,
      title: AppbarTitleImage(
        imagePath: ImageConstant.imgLogo,
      ),
      styleType: Style.bgShadow,
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: CustomTextFormField(
        controller: phoneNumberController,
        hintText: "+998 (00) 000-00-00",
        hintStyle: CustomTextStyles.bodyMediumLatoBluegray200,
        borderDecoration: TextFormFieldStyleHelper.outlineBlueGray,
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: CustomTextFormField(
        controller: passwordController,
        hintText: "Maxfiylik kalitini kiriting...",
        hintStyle: CustomTextStyles.bodyMediumBluegray200,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        suffix: Container(
          margin: EdgeInsets.fromLTRB(30.h, 10.v, 12.h, 10.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgEye,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 44.v,
        ),
        obscureText: true,
        contentPadding: EdgeInsets.only(
          left: 12.h,
          top: 13.v,
          bottom: 13.v,
        ),
        borderDecoration: TextFormFieldStyleHelper.outlineBlueGray,
      ),
    );
  }

  /// Section Widget
  Widget _buildDavomEtish(BuildContext context) {
    return CustomElevatedButton(
      text: "Davom etish",
      margin: EdgeInsets.symmetric(horizontal: 8.h),
      buttonTextStyle: CustomTextStyles.titleSmallLatoWhiteA700Bold,
    );
  }

  /// Section Widget
  Widget _buildKirish(BuildContext context) {
    return CustomOutlinedButton(
      text: "Kirish",
      buttonStyle: CustomButtonStyles.outlineBlueGray,
      buttonTextStyle: CustomTextStyles.titleSmallLato,
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Asosiy:
        return AppRoutes.mainPage;
      case BottomBarEnum.Maqolalar:
        return AppRoutes.allArticlesPage;
      case BottomBarEnum.Chat:
        return AppRoutes.chatPage;
      case BottomBarEnum.Kalendar:
        return "/";
      case BottomBarEnum.Profil:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.mainPage:
        return Scaffold();
      case AppRoutes.allArticlesPage:
        return Scaffold();
      case AppRoutes.chatPage:
        return Scaffold();
      default:
        return DefaultWidget();
    }
  }
}
