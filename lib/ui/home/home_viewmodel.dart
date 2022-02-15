import 'package:stacked/stacked.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';

import '../../app/app.locator.dart';

class HomeViewModel extends IndexTrackingViewModel {
  final FirebaseAuthenticationService? _firebaseAuthenticationService =
      locator<FirebaseAuthenticationService>();
  
  bool? loggedIn;

  Future initialize() async {
    loggedIn = _firebaseAuthenticationService?.currentUser != null;
  }
}