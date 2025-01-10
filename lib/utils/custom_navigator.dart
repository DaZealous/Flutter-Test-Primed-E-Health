import 'package:flutter/material.dart';

class CustomNavigator {
  static void navigateToScreen(BuildContext context, String route) {
    Navigator.of(context).pushNamed(route);
    //   return Navigator.of(context, rootNavigator: rootNavigator).push<T?>(
    //     MaterialPageRouteWithBarrier<T?>(
    //       builder: (context) => screen,
    //       fullscreenDialog: fullscreenDialog,
    //     ),
    //   );
  }
}
