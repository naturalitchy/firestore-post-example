
import 'package:firestore_posts_example/data/user_data.dart';
import 'package:flutter/material.dart';

class RootScreen extends StatelessWidget {

  UserData userData = UserData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' FireStore EX '),
        centerTitle: true,
      ),

      body: Center(
        child: Container(
          child: Column(
            children: [
              TextButton(
                onPressed: () {
                  userData.createUserData(
                    id: 'id01',
                    password: 'password01',
                    createTime: DateTime.now(),
                    loginCount: 0,
                  );
                },
                child: const Text('INSERT'),
              ),
            ],
          ),
        ),
      ),
    );
  }

}