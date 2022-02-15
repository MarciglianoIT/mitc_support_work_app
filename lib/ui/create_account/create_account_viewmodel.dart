
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';

import '../../app/app.locator.dart';
import '../../app/app.router.dart';
import '../base/authentication_viewmodel.dart';
import 'create_account_view.form.dart';

class CreateAccountViewModel extends AuthenticationViewModel {
  final _firebaseAuthenticationService =
      locator<FirebaseAuthenticationService>();

  String title = 'Create account';

  CreateAccountViewModel() : super(successRoute: Routes.homeView);

  @override
  Future<FirebaseAuthenticationResult> runAuthentication() =>
      _firebaseAuthenticationService.createAccountWithEmail(
        email: emailValue!,
        password: passwordValue!,
      );

  void navigateBack() => navigationService.back();
}
