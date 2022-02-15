import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';
import 'package:stacked_services/stacked_services.dart';

import '../ui/blog/blog_view.dart';
import '../ui/home/home_view.dart';
import '../ui/ticket/ticket_data_view.dart';
import '../ui/create_account/create_account_view.dart';
import '../ui/login/login_view.dart';
import '../ui/ticket/ticket_navigator.dart';
import '../ui/ticket/ticket_view.dart';
import '../ui/profile/profile_view.dart';

import '../api/firestore_api.dart';
import '../services/user_service.dart';


@StackedApp(
  routes: [
    MaterialRoute(page: HomeView, initial: true),
    MaterialRoute(page: CreateAccountView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: BlogView),
    MaterialRoute(page: TicketNavigator,children: [
      MaterialRoute(page: TicketView, initial: true),
      MaterialRoute(page: TicketDataView),
    ]),
    MaterialRoute(page: ProfileView),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: UserService),
    LazySingleton(classType: FirestoreApi),
    Singleton(classType: FirebaseAuthenticationService),
  ],
  logger: StackedLogger(),
)
class AppSetup {
  /** Serves no purpose besides having an annotation attached to it */
}