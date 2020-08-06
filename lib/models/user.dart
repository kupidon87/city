
import '../import.dart';

class User{
  String id;

  User.fromFirebase(FirebaseUser user){
    id = user.uid;
  }
}