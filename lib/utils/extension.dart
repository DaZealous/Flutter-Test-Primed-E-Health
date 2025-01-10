import 'package:flutter/material.dart';

extension Keyboard on Never {
  static void hide() {
    FocusManager.instance.primaryFocus?.unfocus();
  }
}

extension IndexedIterable<E> on Iterable<E> {
  Iterable<T> mapIndexed<T>(T Function(E e, int i) f) {
    var i = 0;
    return map((e) => f(e, i++));
  }
}

int intAsBool(bool value) {
  if (value == true) {
    return 1;
  } else {
    return 0;
  }
}


extension StringCastingExtension on String {
  String toCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';

  String toTitleCase() => replaceAll(RegExp(' +'), ' ')
      .split(' ')
      .map((str) => str.toCapitalized())
      .join(' ');
}