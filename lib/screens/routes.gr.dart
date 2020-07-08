// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:digitalrand/screens/splash/splash.dart';
import 'package:digitalrand/screens/signup/signup.dart';
import 'package:digitalrand/screens/signup/verify.dart';
import 'package:digitalrand/screens/signup/username.dart';
import 'package:digitalrand/screens/misc/pincode.dart';
import 'package:digitalrand/screens/cash_home/cash_mode.dart';
import 'package:digitalrand/models/tokens/token.dart';
import 'package:digitalrand/screens/cash_home/transaction_details.dart';
import 'package:digitalrand/screens/buy/business.dart';
import 'package:digitalrand/screens/signup/recovery.dart';
import 'package:digitalrand/screens/buy/map.dart';
import 'package:digitalrand/screens/cash_home/prize.dart';

class Router {
  static const splashScreen = '/splash-screen';
  static const signupScreen = '/signup-screen';
  static const verifyScreen = '/verify-screen';
  static const userNameScreen = '/user-name-screen';
  static const pincodeScreen = '/pincode-screen';
  static const cashHomeScreen = '/';
  static const transactionDetailsScreen = '/transaction-details-screen';
  static const businessPage = '/business-page';
  static const recoveryPage = '/recovery-page';
  static const mapScreen = '/map-screen';
  static const prizeScreen = '/prize-screen';
  static final navigator = ExtendedNavigator();
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Router.splashScreen:
        return MaterialPageRoute<dynamic>(
          builder: (_) => SplashScreen(),
          settings: settings,
        );
      case Router.signupScreen:
        return MaterialPageRoute<dynamic>(
          builder: (_) => SignupScreen(),
          settings: settings,
        );
      case Router.verifyScreen:
        if (hasInvalidArgs<VerifyScreenArguments>(args)) {
          return misTypedArgsRoute<VerifyScreenArguments>(args);
        }
        final typedArgs = args as VerifyScreenArguments;
        return MaterialPageRoute<dynamic>(
          builder: (_) => VerifyScreen(pageArgs: typedArgs),
          settings: settings,
        );
      case Router.userNameScreen:
        return MaterialPageRoute<dynamic>(
          builder: (_) => UserNameScreen(),
          settings: settings,
        );
      case Router.pincodeScreen:
        return MaterialPageRoute<dynamic>(
          builder: (_) => PincodeScreen(),
          settings: settings,
        );
      case Router.cashHomeScreen:
        if (hasInvalidArgs<CashModeScaffoldArguments>(args)) {
          return misTypedArgsRoute<CashModeScaffoldArguments>(args);
        }
        final typedArgs =
            args as CashModeScaffoldArguments ?? CashModeScaffoldArguments();
        return MaterialPageRoute<dynamic>(
          builder: (_) => CashModeScaffold(
              key: typedArgs.key,
              tabIndex: typedArgs.tabIndex,
              primaryToken: typedArgs.primaryToken),
          settings: settings,
        );
      case Router.transactionDetailsScreen:
        if (hasInvalidArgs<TransactionDetailArguments>(args)) {
          return misTypedArgsRoute<TransactionDetailArguments>(args);
        }
        final typedArgs = args as TransactionDetailArguments;
        return MaterialPageRoute<dynamic>(
          builder: (_) => TransactionDetailsScreen(pageArgs: typedArgs),
          settings: settings,
        );
      case Router.businessPage:
        if (hasInvalidArgs<BusinessPageArguments>(args)) {
          return misTypedArgsRoute<BusinessPageArguments>(args);
        }
        final typedArgs = args as BusinessPageArguments;
        return MaterialPageRoute<dynamic>(
          builder: (_) => BusinessPage(pageArgs: typedArgs),
          settings: settings,
        );
      case Router.recoveryPage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => RecoveryPage(),
          settings: settings,
        );
      case Router.mapScreen:
        return MaterialPageRoute<dynamic>(
          builder: (_) => MapScreen(),
          settings: settings,
        );
      case Router.prizeScreen:
        return MaterialPageRoute<dynamic>(
          builder: (_) => PrizeScreen(),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

//**************************************************************************
// Arguments holder classes
//***************************************************************************

//CashModeScaffold arguments holder class
class CashModeScaffoldArguments {
  final Key key;
  final int tabIndex;
  final Token primaryToken;
  CashModeScaffoldArguments({this.key, this.tabIndex = 0, this.primaryToken});
}
