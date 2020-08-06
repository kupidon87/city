
// ignore: avoid_web_libraries_in_flutter

import 'dart:io';

//import 'package:firebase_storage/firebase_storage.dart' as file;
import '../import.dart';

class FirebaseStorageService{
  FirebaseStorageService({@required this.uid}) : assert (uid != null);
  final String uid;

  Future<String> uploadAvatar({
  @required File file,
}) async =>
      await upload(
        file: file,
        path: FirestorePath.avatar(uid) + '/avatar.png',
        contentType: 'image/png',
      );


  Future<String> upload({
    @required File file,
    @required String path,
    @required String contentType,
}) async {

    print('upload to: $path');

    final storageReference = FirebaseStorage.instance.ref().child(path);

    final uploadTask = storageReference.putFile(file, StorageMetadata(contentType: contentType));

    final snapshot = await uploadTask.onComplete;

    if (snapshot.error != null) {

      print('upload error code: ${snapshot.error}');
      throw snapshot.error;

    }
    final downloadUrl = await snapshot.ref.getDownloadURL();
    print('downloadUrl: $downloadUrl');
    return downloadUrl;
}
}