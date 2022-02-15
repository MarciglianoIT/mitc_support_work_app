// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../model/ticket/ticket.dart';
import '../ui/blog/blog_view.dart';
import '../ui/create_account/create_account_view.dart';
import '../ui/home/home_view.dart';
import '../ui/login/login_view.dart';
import '../ui/profile/profile_view.dart';
import '../ui/ticket/ticket_data_view.dart';
import '../ui/ticket/ticket_navigator.dart';
import '../ui/ticket/ticket_view.dart';

class Routes {
  static const String homeView = '/';
  static const String createAccountView = '/create-account-view';
  static const String loginView = '/login-view';
  static const String blogView = '/blog-view';
  static const String ticketNavigator = '/ticket-navigator';
  static const String profileView = '/profile-view';
  static const all = <String>{
    homeView,
    createAccountView,
    loginView,
    blogView,
    ticketNavigator,
    profileView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.createAccountView, page: CreateAccountView),
    RouteDef(Routes.loginView, page: LoginView),
    RouteDef(Routes.blogView, page: BlogView),
    RouteDef(
      Routes.ticketNavigator,
      page: TicketNavigator,
      generator: TicketNavigatorRouter(),
    ),
    RouteDef(Routes.profileView, page: ProfileView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    HomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const HomeView(),
        settings: data,
      );
    },
    CreateAccountView: (data) {
      var args = data.getArgs<CreateAccountViewArguments>(
        orElse: () => CreateAccountViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => CreateAccountView(key: args.key),
        settings: data,
      );
    },
    LoginView: (data) {
      var args = data.getArgs<LoginViewArguments>(
        orElse: () => LoginViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => LoginView(key: args.key),
        settings: data,
      );
    },
    BlogView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const BlogView(),
        settings: data,
      );
    },
    TicketNavigator: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const TicketNavigator(),
        settings: data,
      );
    },
    ProfileView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const ProfileView(),
        settings: data,
      );
    },
  };
}

class TicketNavigatorRoutes {
  static const String ticketView = '/';
  static const String ticketDataView = '/ticket-data-view';
  static const all = <String>{
    ticketView,
    ticketDataView,
  };
}

class TicketNavigatorRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(TicketNavigatorRoutes.ticketView, page: TicketView),
    RouteDef(TicketNavigatorRoutes.ticketDataView, page: TicketDataView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    TicketView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const TicketView(),
        settings: data,
      );
    },
    TicketDataView: (data) {
      var args = data.getArgs<TicketDataViewArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => TicketDataView(
          key: args.key,
          ticket: args.ticket,
        ),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// CreateAccountView arguments holder class
class CreateAccountViewArguments {
  final Key? key;
  CreateAccountViewArguments({this.key});
}

/// LoginView arguments holder class
class LoginViewArguments {
  final Key? key;
  LoginViewArguments({this.key});
}

/// TicketDataView arguments holder class
class TicketDataViewArguments {
  final Key? key;
  final Ticket ticket;
  TicketDataViewArguments({this.key, required this.ticket});
}
