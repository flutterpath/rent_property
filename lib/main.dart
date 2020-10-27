import 'package:flutter/material.dart';
import 'package:property/theme/project_theme.dart';
import 'package:property/ui/dashboard/country_screen.dart';
import 'package:property/ui/dashboard/currency_screen.dart';
import 'package:property/ui/dashboard/editProfile/edit_profile.dart';
import 'package:property/ui/dashboard/favorites/favorites.dart';
import 'package:property/ui/dashboard/favorites/favorites_empty.dart';
import 'package:property/ui/dashboard/notification/ntification_screen.dart';
import 'package:property/ui/dashboard/privacy_policy_screen.dart';
import 'package:property/ui/dashboard/property_detail/property_detail1.dart';
import 'package:property/ui/dashboard/property_detail/property_detail2.dart';
import 'package:property/ui/dashboard/property_detail/property_detail3.dart';
import 'package:property/ui/dashboard/search/city_detail.dart';
import 'package:property/ui/dashboard/search/city_detail_result.dart';
import 'package:property/ui/dashboard/search/map_screen.dart';
import 'package:property/ui/dashboard/search/search_expand.dart';
import 'package:property/ui/dashboard/search/search_first.dart';
import 'package:property/ui/dashboard/search/search_result24.dart';
import 'package:property/ui/dashboard/search/search_result25.dart';
import 'package:property/ui/dashboard/settings/setting_screen1.dart';
import 'package:property/ui/dashboard/settings/setting_screen2.dart';
import 'package:property/ui/dashboard/social_media.dart';
import 'package:property/ui/dashboard/support_faq.dart';
import 'package:property/ui/dashboard/user_profile.dart';
import 'package:property/ui/drawer/my_drawer.dart';
import 'package:property/ui/login/Sign_up.dart';
import 'package:property/ui/login/change_password.dart';
import 'package:property/ui/login/enter_number.dart';
import 'package:property/ui/login/forgot_password.dart';
import 'package:property/ui/login/login1.dart';
import 'package:property/ui/login/login2.dart';
import 'package:property/ui/login/login3.dart';
import 'package:property/ui/login/otp_screen.dart';
import 'package:property/ui/login/sign_up_with.dart';
import 'package:property/ui/sara.dart';
import 'package:property/ui/start/onBoarding.dart';
import 'package:property/ui/start/signup.dart';
import 'package:property/utils/my_color.dart';

AppThemeData theme = AppThemeData();

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'SFProText',
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: MyColors.white,
      ),
      initialRoute: '/onBoarding',
      routes: {
        '/signUpWelcome': (context) => SignUpWelcome(),
        '/onBoarding' : (context) => OnBoardingScreen(),
        '/signUpScreen' : (context) => SignUpScreen(),
        '/signUpWith' : (context) => SignUpWith(),
        '/enterPhoneNumber' : (context) => EnterPhoneNumber(),
        '/otpScreen' : (context) => OtpScreen(),
        '/loginScreen1' : (context) => LoginScreen1(),
        '/loginScreen2' : (context) => LoginScreen2(),
        '/loginScreen3' : (context) => LoginScreen3(),
        '/forgotPassword' : (context) => ForgotPassword(),
        '/favoritesEmpty' : (context) => FavoritesEmpty(),
        '/settingScreen1' : (context) => SettingScreen1(),
        '/settingScreen2' : (context) => SettingScreen2(),
        '/editProfileScreen' : (context) => EditProfileScreen(),
        '/notificationScreen' : (context) => NotificationScreen(),
        '/socialMediaScreen' : (context) => SocialMediaScreen(),
        '/countryScreen' : (context) => CountryScreen(),
        '/currencyScreen' : (context) => CurrencyScreen(),
        '/privacyPolicyScreen' : (context) => PrivacyPolicyScreen(),
        '/changePasswordScreen' : (context) => ChangePasswordScreen(),
        '/supportFaqScreen' : (context) => SupportFaqScreen(),
        '/drawerScreen' : (context) => DrawerScreen(),
        '/searchFirstScreen' : (context) => SearchFirstScreen(),
        '/cityDetailScreen' : (context) => CityDetailScreen(),
        '/cityDetailResult' : (context) => CityDetailResult(),
        '/searchResultList24' : (context) => SearchResultList24(),
        '/searchResult25' : (context) => SearchResult25(),
        '/propertyDetail1' : (context) => PropertyDetail1(),
        '/propertyDetail2' : (context) => PropertyDetail2(),
        '/propertyDetail3' : (context) => PropertyDetail3(),
        '/userProfile' : (context) => UserProfile(),
        '/favoritesScreen' : (context) => FavoritesScreen(),
        '/searchExpanded2' : (context) => SearchExpanded2(),
        '/mapScreen' : (context) => MapScreen(),
        '/saraScreen' : (context) => SaraProject(),
        // '/second': (context) => SecondScreen(),
      },
    );
  }
}

