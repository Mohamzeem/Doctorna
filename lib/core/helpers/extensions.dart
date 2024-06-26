import 'package:doctorna/core/helpers/prints.dart';
import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  Future<dynamic> pushName(String routeName, {Object? args}) async {
    Prints.route('Navigat to => $routeName');
    return Navigator.of(this).pushNamed(routeName, arguments: args);
  }

  Future<dynamic> pushReplacmentName(String routeName, {Object? args}) async {
    Prints.route('Navigat And Replacment => $routeName');
    return Navigator.of(this).pushReplacementNamed(routeName, arguments: args);
  }

  Future<dynamic> pushNamedAndRemoveUntil(String routeName,
      {Object? args, required RoutePredicate predicate}) async {
    Prints.route('Navigat And RemoveUntil => $routeName');
    return Navigator.of(this)
        .pushNamedAndRemoveUntil(routeName, predicate, arguments: args);
  }

  void pop() {
    Prints.route('Page Closed');
    return Navigator.of(this).pop();
  }
}
