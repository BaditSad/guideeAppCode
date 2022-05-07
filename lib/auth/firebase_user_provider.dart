import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class GuideeFirebaseUser {
  GuideeFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

GuideeFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<GuideeFirebaseUser> guideeFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<GuideeFirebaseUser>((user) => currentUser = GuideeFirebaseUser(user));
