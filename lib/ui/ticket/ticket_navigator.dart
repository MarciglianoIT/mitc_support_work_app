import 'package:flutter/material.dart';
import 'package:mitc_support_work_app/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class TicketNavigator extends StatelessWidget {
  const TicketNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ExtendedNavigator(
        router: TicketNavigatorRouter(),
        navigatorKey: StackedService.nestedNavigationKey(1),
      ),
    );
  }
}
