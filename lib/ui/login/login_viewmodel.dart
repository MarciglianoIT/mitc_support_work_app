import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';

import '../../app/app.locator.dart';
import '../../app/app.router.dart';
import '../base/authentication_viewmodel.dart';

import 'login_view.form.dart';


class LoginViewModel extends AuthenticationViewModel {
  final FirebaseAuthenticationService? _firebaseAuthenticationService =
      locator<FirebaseAuthenticationService>();

  String title = 'Log In';

  LoginViewModel() : super(successRoute: Routes.homeView);

  @override
  Future<FirebaseAuthenticationResult> runAuthentication() =>
      _firebaseAuthenticationService!.loginWithEmail(
        email: emailValue!,
        password: passwordValue!,
      );

  void navigateToCreateAccount() =>
      navigationService.navigateTo(Routes.createAccountView);
}
