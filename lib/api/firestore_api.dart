import 'package:cloud_firestore/cloud_firestore.dart';

import '../app/app.logger.dart';
import '../constants/app_keys.dart';
import '../exceptions/firestore_api_exception.dart';
import '../model/application_models.dart';

class FirestoreApi {
  final log = getLogger('FirestoreApi');

  final CollectionReference<Map<String, dynamic>> usersCollection =
      FirebaseFirestore.instance.collection(usersFirestoreKey);

  final CollectionReference<Map<String, dynamic>> regionsCollection =
      FirebaseFirestore.instance.collection(regionsFirestoreKey);

  Future<void> createUser({required User user}) async {
    log.i('user:$user');

    try {
      final userDocument = usersCollection.doc(user.id);
      await userDocument.set(user.toJson());
      log.v('UserCreated at ${userDocument.path}');
    } catch (error) {
      throw FirestoreApiException(
        message: 'Failed to create new user',
        devDetails: '$error',
      );
    }
  }

  Future<User?> getUser({required String userId}) async {
    log.i('userId:$userId');

    if (userId.isNotEmpty) {
      final userDoc = await usersCollection.doc(userId).get();
      if (!userDoc.exists) {
        log.v('We have no user with id $userId in our database');
        return null;
      }

      final Map<String, dynamic>? userData = userDoc.data();
      log.v('User found. Data: $userData');

      return User.fromJson(userData!);
    } else {
      throw FirestoreApiException(
          message:
              'Your userId passed in is empty. Please pass in a valid user if from your Firebase user.');
    }
  }
}
