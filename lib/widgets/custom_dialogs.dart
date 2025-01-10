import 'package:flutter/material.dart';
import 'package:flutter_assessment/utils/theme.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
class CustomDialogs {
  static Future<void> showLoadingBar(context) async {
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 0,
            contentPadding: const EdgeInsets.all(0),
            backgroundColor: Colors.transparent,
            content: Card(
              color: Colors.transparent,
              elevation: 0,
              child: Wrap(
                children: <Widget>[
                  Center(
                    child: LoadingAnimationWidget.discreteCircle(
                      color: AppColors.primary,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
