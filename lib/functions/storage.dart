import 'package:firebase_storage/firebase_storage.dart';

StorageReference storeRef = FirebaseStorage.instance.ref();

class UserAvatars{
  StorageReference uBucket = storeRef.child('user_avatars');

  Future<String> getImage(String id) async{
    String url = await uBucket.child('$id.png').getDownloadURL();
    return url;
  }
}
