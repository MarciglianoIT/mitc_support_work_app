import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:mitc_support_work_app/ui/login/login_view.dart';
import 'package:mitc_support_work_app/ui/ticket/ticket_navigator.dart';
import 'package:stacked/stacked.dart';

import 'package:mitc_support_work_app/theme/colors.dart';

import '../blog/blog_view.dart';

import '../profile/profile_view.dart';
import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body:  PageTransitionSwitcher(
          duration: const Duration(milliseconds: 300),
          reverse: model.reverse,
          transitionBuilder: (
            Widget child,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) {
            return SharedAxisTransition(
              child: child,
              animation: animation,
              secondaryAnimation: secondaryAnimation,
              transitionType: SharedAxisTransitionType.vertical,
            );
          },
          child: getViewForIndex(model.currentIndex, model.loggedIn!),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: ColorPalette.secondary,
          unselectedItemColor: ColorPalette.primaryAccent,
          backgroundColor: ColorPalette.primary,
          currentIndex: model.currentIndex,
          onTap: model.setIndex,
          items: const [
            BottomNavigationBarItem(
              label: 'Blog',
              icon: Icon(Icons.art_track),
            ),
            BottomNavigationBarItem(
              label: 'Tickets',
              icon: Icon(Icons.support),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(Icons.account_circle),
            ),
          ],
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
      onModelReady: (model) => model.initialize(),
    );
  }

  Widget getViewForIndex(int index, bool loggedIn) {
    switch (index) {
      case 0:
        return const BlogView();
      case 1:
        return loggedIn ? const TicketNavigator() : LoginView();
      case 2:
        return loggedIn ? ProfileView() : LoginView();
      default:
        return const BlogView();
    }
  }
}
