import 'package:aaaaaa/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';


class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onboardingOneScreen = '/onboarding_one_screen';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String onboardingThreeScreen = '/onboarding_three_screen';

  static const String registerLoginScreen = '/register_login_screen';

  static const String registerLoginOneScreen = '/register_login_one_screen';

  static const String registerSignupScreen = '/register_signup_screen';

  static const String mainPage = '/main_page';

  static const String mainContainerScreen = '/main_container_screen';

  static const String allArticlesPage = '/all_articles_page';

  static const String articleSingleScreen = '/article_single_screen';

  static const String articleSingleOneScreen = '/article_single_one_screen';

  static const String categorySingleScreen = '/category_single_screen';

  static const String chatPage = '/chat_page';

  static const String chatSingleOneScreen = '/chat_single_one_screen';

  static const String chatSingleVoiceChatScreen =
      '/chat_single_voice_chat_screen';

  static const String chatSingleWithDocumentScreen =
      '/chat_single_with_document_screen';

  static const String androidLargeOneScreen = '/android_large_one_screen';

  static const String medgHaqidaScreen = '/medg_haqida_screen';

  static const String qoLlabQuvvatlashMarkaziOneScreen =
      '/qo_llab_quvvatlash_markazi_one_screen';

  static const String qoLlabQuvvatlashMarkaziTwoScreen =
      '/qo_llab_quvvatlash_markazi_two_screen';

  static const String accountSettingsScreen = '/account_settings_screen';

  static const String calendarScreen = '/calendar_screen';

  static const String chatSingleVoiceChatOneScreen =
      '/chat_single_voice_chat_one_screen';

  static const String mainUnauthenticatedScreen =
      '/main_unauthenticated_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    // onboardingOneScreen: (context) => OnboardingOneScreen(),
    // onboardingTwoScreen: (context) => OnboardingTwoScreen(),
    // onboardingThreeScreen: (context) => OnboardingThreeScreen(),
    // registerLoginScreen: (context) => RegisterLoginScreen(),
    // registerLoginOneScreen: (context) => RegisterLoginOneScreen(),
    // registerSignupScreen: (context) => RegisterSignupScreen(),
    // mainContainerScreen: (context) => MainContainerScreen(),
    // articleSingleScreen: (context) => ArticleSingleScreen(),
    // articleSingleOneScreen: (context) => ArticleSingleOneScreen(),
    // categorySingleScreen: (context) => CategorySingleScreen(),
    // chatSingleOneScreen: (context) => ChatSingleOneScreen(),
    // chatSingleVoiceChatScreen: (context) => ChatSingleVoiceChatScreen(),
    // chatSingleWithDocumentScreen: (context) => ChatSingleWithDocumentScreen(),
    // androidLargeOneScreen: (context) => AndroidLargeOneScreen(),
    // medgHaqidaScreen: (context) => MedgHaqidaScreen(),
    // qoLlabQuvvatlashMarkaziOneScreen: (context) =>
    //     QoLlabQuvvatlashMarkaziOneScreen(),
    // qoLlabQuvvatlashMarkaziTwoScreen: (context) =>
    //     QoLlabQuvvatlashMarkaziTwoScreen(),
    // accountSettingsScreen: (context) => AccountSettingsScreen(),
    // calendarScreen: (context) => CalendarScreen(),
    // chatSingleVoiceChatOneScreen: (context) => ChatSingleVoiceChatOneScreen(),
    // mainUnauthenticatedScreen: (context) => MainUnauthenticatedScreen(),
    // appNavigationScreen: (context) => AppNavigationScreen()
  };
}
