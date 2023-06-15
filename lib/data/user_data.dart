
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firestore_posts_example/data/user_column.dart';

class UserData extends UserColumn {
  UserData()
    : super(id: '', password: '', createTime: DateTime(2023), loginCount: 0);


  Future<void> createUserData({
    required String id,
    required String password,
    required DateTime createTime,
    required int loginCount,
  }) async {
    final db = FirebaseFirestore.instance;
    /// way 1
    // final user = <String, dynamic>{
    //   "first": "Ada",
    //   "last": "Lovelace",
    //   "born": 1815
    // };
    // Add a new document with a generated ID
    // db.collection("users").add(user).then((DocumentReference doc) =>
    //     print('DocumentSnapshot added with ID: ${doc.id}'));


    /// way 2.
    final usercol = db.collection("users").doc("userkey2");
    List<int> aa = [1,2,3,4,];
    List<String> bb = ['c','a','b','d'];
    usercol.set({
      "username" : bb,
      "age" : aa,
    });


    /// way 3
    // db.collection("userss").doc("userkey2").set(user);

    // await db.collection("users").get().then((event) {
    //   for (var doc in event.docs) {
    //     print("${doc.id} => ${doc.data()}");
    //   }
    // });
  }

}






