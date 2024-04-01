import 'package:aaaaaa/core/utils/image_constant.dart';
import 'package:aaaaaa/core/utils/size_utils.dart';
import 'package:aaaaaa/custom/custom_bottom_bar.dart';
import 'package:aaaaaa/custom/custom_image_view.dart';
import 'package:aaaaaa/routes/app_routes.dart';
import 'package:aaaaaa/theme/theme_helper.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 55.h,
            vertical: 32.v,
          ),
          child: Column(
            children: [
              Spacer(
                flex: 53,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgLogo,
                height: 88.v,
              ),
              Spacer(
                flex: 46,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgLoader1,
                height: 32.adaptSize,
                width: 32.adaptSize,
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
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
