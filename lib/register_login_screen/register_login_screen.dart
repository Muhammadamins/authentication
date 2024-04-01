import 'package:aaaaaa/core/utils/image_constant.dart';
import 'package:aaaaaa/core/utils/size_utils.dart';
import 'package:aaaaaa/custom/custom_bottom_bar.dart';
import 'package:aaaaaa/custom/custom_elevated_button.dart';
import 'package:aaaaaa/custom/custom_image_view.dart';
import 'package:aaaaaa/custom/custom_outlined_button.dart';
import 'package:aaaaaa/custom/custom_text_form_field.dart';
import 'package:aaaaaa/routes/app_routes.dart';
import 'package:aaaaaa/theme/app_decoration.dart';
import 'package:aaaaaa/theme/custom_button_style.dart';
import 'package:aaaaaa/theme/custom_text_style.dart';
import 'package:aaaaaa/theme/theme_helper.dart';
// import 'package:medg/presentation/main_page/main_page.dart';
// import 'package:medg/presentation/all_articles_page/all_articles_page.dart';
// import 'package:medg/presentation/chat_page/chat_page.dart';
// import 'package:medg/widgets/custom_text_form_field.dart';
// import 'package:medg/widgets/custom_elevated_button.dart';
// import 'package:medg/widgets/custom_outlined_button.dart';
// import 'package:medg/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class RegisterLoginScreen extends StatelessWidget {
  RegisterLoginScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: SizedBox(
              height: SizeUtils.height,
              
              child: Form(
                key: _formKey,
                child: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                    children: [
                      _buildLogo(context),
                      SizedBox(height: 28.v),
                      Text(
                        "Kirish",
                        style: theme.textTheme.titleLarge,
                      ),
                      SizedBox(height: 34.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text(
                            "Email",
                            style: CustomTextStyles.titleSmallBluegray300,
                          ),
                        ),
                      ),
                      SizedBox(height: 7.v),
                      _buildEmail(context),
                      SizedBox(height: 22.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text(
                            "Maxfiylik kaliti",
                            style: CustomTextStyles.titleSmallBluegray300,
                          ),
                        ),
                      ),
                      SizedBox(height: 6.v),
                      _buildPassword(context),
                      SizedBox(height: 18.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 16.h),
                          child: Text(
                            "Maxfiylik kalitini unutdingizmi ?",
                            style: CustomTextStyles.bodyMediumPrimary,
                          ),
                        ),
                      ),
                      SizedBox(height: 18.v),
                      _buildKirish(context),
                      Spacer(),
                      SizedBox(height: 16.v),
                      _buildRoyxatdanOtish(context),
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

  Widget _buildLogo(BuildContext context) {
    return SizedBox(
      height: 100.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 109.h,
                vertical: 25.v,
              ),
              decoration: AppDecoration.white,
              child: CustomImageView(
                imagePath: ImageConstant.imgLogo,
                height: 50.v,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowDown,
            height: 24.adaptSize,
            width: 24.adaptSize,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(
              left: 16.h,
              top: 16.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: CustomTextFormField(
        controller: emailController,
        hintText: "jaxongirovjasurbek@gmail.com",
        hintStyle: CustomTextStyles.bodyMediumOnPrimary,
        textInputType: TextInputType.emailAddress,
        borderDecoration: TextFormFieldStyleHelper.outlineBlueGray,
      ),
    );
  }

  Widget _buildPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
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

  CustomElevatedButton _buildKirish(BuildContext context) {
    return CustomElevatedButton(
      text: "Kirish",
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  Widget _buildRoyxatdanOtish(BuildContext context) {
    return CustomOutlinedButton(
      text: "Ro‘yxatdan o‘tish",
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      buttonStyle: CustomButtonStyles.outlineBlueGray,
      buttonTextStyle: theme.textTheme.titleSmall!,
    );
  }

  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

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
