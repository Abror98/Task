import 'package:flutter/cupertino.dart';

class RouteMissingArgsFailure implements Exception {}

T getArgsOrThrow<T>(Object? arguments) {
  if (arguments == null) {
    throw RouteMissingArgsFailure();
  }

  return arguments as T;
}

T? tryToGetArgsOrIgnore<T>(Object? arguments) {
  if (arguments != null) {
    return arguments as T;
  }

  return null;
}

abstract class AppRouter {
  Map<String, PageRoute> getOuterRouters(RouteSettings settings);

  Map<String, PageRoute> getInnerRouters(RouteSettings settings);
}
