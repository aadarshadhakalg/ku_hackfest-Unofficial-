import 'dart:async';
import 'package:angular/angular.dart';
import 'package:firebase/firebase.dart' as fb;

@Injectable()
class DatabaseService {
  fb.Auth _fbAuth;
  fb.GoogleAuthProvider _fbGoogleAuthProvider;
  fb.Database _fbDatabase;
  fb.Storage _fbStorage;
  fb.DatabaseReference _fbRefMessages;
  fb.User user;

  DatabaseService() {
    try {
      fb.initializeApp(
        apiKey: 'AIzaSyC14MDcOaMhG_hCizFQo-pG9eDHkVt9wxg',
        authDomain: 'ku-hackfest-2020.firebaseapp.com',
        databaseURL: 'https://ku-hackfest-2020.firebaseio.com',
        projectId: 'ku-hackfest-2020',
        storageBucket: 'ku-hackfest-2020.appspot.com',
        appId: '1:1090476328924:web:0f199c6e02d4447ad77119',
      );
    } catch (e) {
      print(e.toString());
    }

    _fbGoogleAuthProvider = fb.GoogleAuthProvider();
    _fbAuth = fb.auth();
    _fbAuth.onAuthStateChanged.listen(_authChanged);
  }

  void _authChanged(fb.User fbUser) {
    user = fbUser;
  }

  Future signIn() async {
    try {
      await _fbAuth.signInWithPopup(_fbGoogleAuthProvider);
    } catch (error) {
      print('$runtimeType::login() -- $error');
    }
  }

  void signOut() {
    _fbAuth.signOut();
  }
}
