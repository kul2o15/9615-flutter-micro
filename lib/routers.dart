import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';

final kMainNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: kMainNavigatorKey,
  observers: [],
  initialLocation: '/home-screen',
  debugLogDiagnostics: kDebugMode,
  routes: [],
);
