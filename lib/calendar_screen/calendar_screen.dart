
import 'package:aaaaaa/core/utils/size_utils.dart';
import 'package:aaaaaa/custom/app_bar/appbar_title_button.dart';
import 'package:aaaaaa/custom/app_bar/custom_app_bar.dart';
import 'package:aaaaaa/custom/custom_bottom_bar.dart';
import 'package:aaaaaa/routes/app_routes.dart';
import 'package:aaaaaa/theme/theme_helper.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CalendarScreen extends StatelessWidget {
  CalendarScreen({super.key});

  List<DateTime?> selectedDatesFromCalendar1 = [];

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 31.v),
              _buildCalendar(context),
              Spacer(),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 57.v,
      centerTitle: true,
      title: SizedBox(
        height: 57.v,
        width: double.maxFinite,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            AppbarTitleButton(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 56.v),
                child: SizedBox(
                  width: double.maxFinite,
                  child: Divider(
                    color: appTheme.gray100,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildCalendar(BuildContext context) {
    return SizedBox(
      height: 308.v,
      width: 330.h,
      child: CalendarDatePicker2(
        config: CalendarDatePicker2Config(
          calendarType: CalendarDatePicker2Type.multi,
          firstDate: DateTime(DateTime.now().year - 5),
          lastDate: DateTime(DateTime.now().year + 5),
          selectedDayHighlightColor: Color(0XFF0062FF),
          firstDayOfWeek: 0,
          selectedDayTextStyle: TextStyle(
            color: Color(0XFFFFFFFF),
            fontFamily: 'Lato',
            fontWeight: FontWeight.w700,
          ),
          dayTextStyle: TextStyle(
            color: theme.colorScheme.onPrimary,
            fontFamily: 'Lato',
            fontWeight: FontWeight.w700,
          ),
          dayBorderRadius: BorderRadius.circular(
            4.h,
          ),
        ),
        value: selectedDatesFromCalendar1,
        onValueChanged: (dates) {},
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
