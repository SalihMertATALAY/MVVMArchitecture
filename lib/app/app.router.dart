// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i5;
import 'package:flutter/material.dart';
import 'package:mvvm_project/Anasayfa/anasayfa_view.dart' as _i3;
import 'package:mvvm_project/Anasayfa/insan_model.dart' as _i6;
import 'package:mvvm_project/Detay/detay_view.dart' as _i4;
import 'package:mvvm_project/main.dart' as _i2;
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i7;

class Routes {
  static const myHomePage = '/';

  static const anasayfaView = '/anasayfa-view';

  static const detayView = '/detay-view';

  static const all = <String>{
    myHomePage,
    anasayfaView,
    detayView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.myHomePage,
      page: _i2.MyHomePage,
    ),
    _i1.RouteDef(
      Routes.anasayfaView,
      page: _i3.AnasayfaView,
    ),
    _i1.RouteDef(
      Routes.detayView,
      page: _i4.DetayView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.MyHomePage: (data) {
      final args = data.getArgs<MyHomePageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => _i2.MyHomePage(key: args.key, title: args.title),
        settings: data,
      );
    },
    _i3.AnasayfaView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.AnasayfaView(),
        settings: data,
      );
    },
    _i4.DetayView: (data) {
      final args = data.getArgs<DetayViewArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i4.DetayView(key: args.key, secilenInsan: args.secilenInsan),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;
  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class MyHomePageArguments {
  const MyHomePageArguments({
    this.key,
    required this.title,
  });

  final _i5.Key? key;

  final String title;
}

class DetayViewArguments {
  const DetayViewArguments({
    this.key,
    required this.secilenInsan,
  });

  final _i5.Key? key;

  final _i6.Insan secilenInsan;
}

extension NavigatorStateExtension on _i7.NavigationService {
  Future<dynamic> navigateToMyHomePage({
    _i5.Key? key,
    required String title,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.myHomePage,
        arguments: MyHomePageArguments(key: key, title: title),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAnasayfaView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.anasayfaView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToDetayView({
    _i5.Key? key,
    required _i6.Insan secilenInsan,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.detayView,
        arguments: DetayViewArguments(key: key, secilenInsan: secilenInsan),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
