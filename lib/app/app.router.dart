// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:ecommerce_app/ui/views/home/home_view.dart' as _i2;
import 'package:ecommerce_app/ui/views/locationPicker/location_picker_view.dart'
    as _i8;
import 'package:ecommerce_app/ui/views/mobileverification/mobileverification_view.dart'
    as _i6;
import 'package:ecommerce_app/ui/views/numbersignin/numbersignin_view.dart'
    as _i5;
import 'package:ecommerce_app/ui/views/pinverification/pinverification_view.dart'
    as _i7;
import 'package:ecommerce_app/ui/views/startup/startup_view.dart' as _i3;
import 'package:ecommerce_app/ui/views/welcome/welcome_view.dart' as _i4;
import 'package:flutter/material.dart' as _i9;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i10;

class Routes {
  static const homeView = '/home-view';

  static const splashScreen = '/splash-screen';

  static const welcomeView = '/welcome-view';

  static const numberSigninView = '/number-signin-view';

  static const mobileVerificationView = '/mobile-verification-view';

  // static const mobileVerificationView = '/mobile-verification-view';

  static const pinVerificationView = '/pin-verification-view';

  static const locationPickerView = '/location-picker-view';

  static const all = <String>{
    homeView,
    splashScreen,
    welcomeView,
    numberSigninView,
    mobileVerificationView,
    pinVerificationView,
    locationPickerView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.homeView,
      page: _i2.HomeView,
    ),
    _i1.RouteDef(
      Routes.splashScreen,
      page: _i3.SplashScreen,
    ),
    _i1.RouteDef(
      Routes.welcomeView,
      page: _i4.WelcomeView,
    ),
    _i1.RouteDef(
      Routes.numberSigninView,
      page: _i5.NumberSigninView,
    ),
    _i1.RouteDef(
      Routes.mobileVerificationView,
      page: _i6.MobileVerificationView,
    ),
    _i1.RouteDef(
      Routes.mobileVerificationView,
      page: _i6.MobileVerificationView,
    ),
    _i1.RouteDef(
      Routes.pinVerificationView,
      page: _i7.PinVerificationView,
    ),
    _i1.RouteDef(
      Routes.locationPickerView,
      page: _i8.LocationPickerView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.HomeView: (data) {
      return _i9.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.HomeView(),
        settings: data,
      );
    },
    _i3.SplashScreen: (data) {
      return _i9.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.SplashScreen(),
        settings: data,
      );
    },
    _i4.WelcomeView: (data) {
      return _i9.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.WelcomeView(),
        settings: data,
      );
    },
    _i5.NumberSigninView: (data) {
      return _i9.MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.NumberSigninView(),
        settings: data,
      );
    },
    _i6.MobileVerificationView: (data) {
      return _i9.MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.MobileVerificationView(),
        settings: data,
      );
    },
    _i7.PinVerificationView: (data) {
      return _i9.MaterialPageRoute<dynamic>(
        builder: (context) => const _i7.PinVerificationView(),
        settings: data,
      );
    },
    _i8.LocationPickerView: (data) {
      return _i9.MaterialPageRoute<dynamic>(
        builder: (context) => const _i8.LocationPickerView(),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

extension NavigatorStateExtension on _i10.NavigationService {
  Future<dynamic> navigateToHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSplashScreen([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.splashScreen,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToWelcomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.welcomeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToNumberSigninView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.numberSigninView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToMobileVerificationView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.mobileVerificationView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }


  Future<dynamic> navigateToPinVerificationView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.pinVerificationView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLocationPickerView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.locationPickerView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSplashScreen([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.splashScreen,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithWelcomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.welcomeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithNumberSigninView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.numberSigninView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithMobileVerificationView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.mobileVerificationView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPinVerificationView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.pinVerificationView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLocationPickerView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.locationPickerView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
