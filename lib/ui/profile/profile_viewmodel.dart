import 'package:stacked/stacked.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../app/app.router.dart';

import '../../app/app.locator.dart';

class ProfileViewModel extends BaseViewModel {
  String title = 'Profile';
  final FirebaseAuthenticationService? _firebaseAuthenticationService =
      locator<FirebaseAuthenticationService>();

  final NavigationService? _navigationService = locator<NavigationService>();

  void runLogOut() {
    _firebaseAuthenticationService!.logout().then((value) {
      _navigationService!.navigateTo(Routes.homeView);
    }).catchError((onError) {
      print("error");
    });
  }

  void doSomething() {
    notifyListeners();
  }
}
