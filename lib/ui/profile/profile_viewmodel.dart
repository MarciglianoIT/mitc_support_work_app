import 'package:mitc_support_work_app/ui/base/userdata_viewmodel.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../app/app.logger.dart';
import '../../app/app.router.dart';

import '../../app/app.locator.dart';

class ProfileViewModel extends UserdataViewModel {
  String title = 'Profile';
  final log = getLogger('Profile View');
  final FirebaseAuthenticationService? _firebaseAuthenticationService =
      locator<FirebaseAuthenticationService>();

  final NavigationService? _navigationService = locator<NavigationService>();

  void logOut() {
    setBusy(true);
    _firebaseAuthenticationService!.logout().then((value) {
      _navigationService!.navigateTo(Routes.homeView);
      setBusy(false);
    }).catchError((onError) {
      setBusy(false);
      log.v('An error occured: ', onError);
    });
  }

  void deleteAccount() {
    setBusy(true);
    _firebaseAuthenticationService!.currentUser!.delete().then((value) {
      _navigationService!.navigateTo(Routes.homeView);
      setBusy(false);
    }).catchError((onError) {
      setBusy(false);
      log.v('An error occured: ', onError);
    });
  }

  void saveData() {}
}
