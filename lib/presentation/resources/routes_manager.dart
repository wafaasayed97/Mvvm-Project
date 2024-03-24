import 'package:flutter/material.dart';
import 'package:mvvm_project/presentation/resources/strings_manager.dart';

import '../forgot_password/forgot_password_view.dart';
import '../login/login_view.dart';
import '../main/main_view.dart';
import '../register/register_view.dart';
import '../splash/splash_view.dart';
import '../store_details/store_details_view.dart';

class Routes{
  static const String splashRoute = '/';
  static const String loginRoute = '/login';
  static const String registerRoute = '/register';
  static const String mainRoute = '/main';
  static const String storeDetailsRoute = '/storeDetails';
  static const String forgotPasswordRoute = '/forgotPassword';
}

class RouteGenerator{
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (context) => const SplashView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (context) => const LoginView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (context) => const RegisterView());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (context) => const MainView());
      case Routes.storeDetailsRoute:
        return MaterialPageRoute(
            builder: (context) => const StoreDetailsView());
      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(
            builder: (context) => const ForgotPasswordView());
      default:
        return unDefinedRoute();
    }
  }
  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: const Text(
              AddingStrings.noRouteFound,
            ),
          ),
          body: const Center(
            child: Text(
              AddingStrings.noRouteFound,
            ),
          ),
        ));
  }
  }