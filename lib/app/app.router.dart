// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:ecommerce_app/ui/components/prod_card_component.dart' as _i13;
import 'package:ecommerce_app/ui/views/addtocart/addtocart_view.dart' as _i12;
import 'package:ecommerce_app/ui/views/beverages/beverages_screen_view.dart'
    as _i11;
import 'package:ecommerce_app/ui/views/home/home_view.dart' as _i2;
import 'package:ecommerce_app/ui/views/locationPicker/location_picker_view.dart'
    as _i8;
import 'package:ecommerce_app/ui/views/loggingPage/loggingPage_view.dart'
    as _i9;
import 'package:ecommerce_app/ui/views/mobileverification/mobileverification_view.dart'
    as _i6;
import 'package:ecommerce_app/ui/views/numbersignin/numbersignin_view.dart'
    as _i5;
import 'package:ecommerce_app/ui/views/pinverification/pinverification_view.dart'
    as _i7;
import 'package:ecommerce_app/ui/views/signup/signup_view.dart' as _i10;
import 'package:ecommerce_app/ui/views/startup/startup_view.dart' as _i3;
import 'package:ecommerce_app/ui/views/welcome/welcome_view.dart' as _i4;
import 'package:flutter/material.dart' as _i14;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i15;

class Routes {
  static const homeView = '/home-view';

  static const splashScreen = '/splash-screen';

  static const welcomeView = '/welcome-view';

  static const numberSigninView = '/number-signin-view';

  static const mobileVerificationView = '/mobile-verification-view';

  // static const mobileVerificationView = '/mobile-verification-view';

  static const pinVerificationView = '/pin-verification-view';

  static const locationPickerView = '/location-picker-view';

  static const loginView = '/login-view';

  static const signupView = '/signup-view';

  static const beveragesView = '/beverages-view';

  static const addtoCartView = '/addto-cart-view';

  static const productCard = '/product-card';

  static const all = <String>{
    homeView,
    splashScreen,
    welcomeView,
    numberSigninView,
    mobileVerificationView,
    pinVerificationView,
    locationPickerView,
    loginView,
    signupView,
    beveragesView,
    addtoCartView,
    productCard,
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
    _i1.RouteDef(
      Routes.loginView,
      page: _i9.LoginView,
    ),
    _i1.RouteDef(
      Routes.signupView,
      page: _i10.SignupView,
    ),
    _i1.RouteDef(
      Routes.beveragesView,
      page: _i11.BeveragesView,
    ),
    _i1.RouteDef(
      Routes.addtoCartView,
      page: _i12.AddtoCartView,
    ),
    _i1.RouteDef(
      Routes.productCard,
      page: _i13.ProductCard,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.HomeView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.HomeView(),
        settings: data,
      );
    },
    _i3.SplashScreen: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.SplashScreen(),
        settings: data,
      );
    },
    _i4.WelcomeView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.WelcomeView(),
        settings: data,
      );
    },
    _i5.NumberSigninView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.NumberSigninView(),
        settings: data,
      );
    },
    _i6.MobileVerificationView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.MobileVerificationView(),
        settings: data,
      );
    },
    _i7.PinVerificationView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i7.PinVerificationView(),
        settings: data,
      );
    },
    _i8.LocationPickerView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i8.LocationPickerView(),
        settings: data,
      );
    },
    _i9.LoginView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i9.LoginView(),
        settings: data,
      );
    },
    _i10.SignupView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i10.SignupView(),
        settings: data,
      );
    },
    _i11.BeveragesView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i11.BeveragesView(),
        settings: data,
      );
    },
    _i12.AddtoCartView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i12.AddtoCartView(),
        settings: data,
      );
    },
    _i13.ProductCard: (data) {
      final args = data.getArgs<ProductCardArguments>(nullOk: false);
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => _i13.ProductCard(
            key: args.key,
            image: args.image,
            name: args.name,
            qtyprice: args.qtyprice,
            price: args.price),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class ProductCardArguments {
  const ProductCardArguments({
    this.key,
    required this.image,
    required this.name,
    required this.qtyprice,
    required this.price,
  });

  final _i14.Key? key;

  final String image;

  final String name;

  final String qtyprice;

  final String price;

  @override
  String toString() {
    return '{"key": "$key", "image": "$image", "name": "$name", "qtyprice": "$qtyprice", "price": "$price"}';
  }

  @override
  bool operator ==(covariant ProductCardArguments other) {
    if (identical(this, other)) return true;
    return other.key == key &&
        other.image == image &&
        other.name == name &&
        other.qtyprice == qtyprice &&
        other.price == price;
  }

  @override
  int get hashCode {
    return key.hashCode ^
        image.hashCode ^
        name.hashCode ^
        qtyprice.hashCode ^
        price.hashCode;
  }
}

extension NavigatorStateExtension on _i15.NavigationService {
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

  Future<dynamic> navigateToLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSignupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.signupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToBeveragesView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.beveragesView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAddtoCartView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.addtoCartView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProductCard({
    _i14.Key? key,
    required String image,
    required String name,
    required String qtyprice,
    required String price,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.productCard,
        arguments: ProductCardArguments(
            key: key,
            image: image,
            name: name,
            qtyprice: qtyprice,
            price: price),
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

  Future<dynamic> replaceWithLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSignupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.signupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithBeveragesView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.beveragesView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAddtoCartView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.addtoCartView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProductCard({
    _i14.Key? key,
    required String image,
    required String name,
    required String qtyprice,
    required String price,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.productCard,
        arguments: ProductCardArguments(
            key: key,
            image: image,
            name: name,
            qtyprice: qtyprice,
            price: price),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
