import 'package:flutter/material.dart';

import '../../models/user/user_model.dart';

class UserScreen extends StatelessWidget {
  UserScreen({super.key});
  List<UserModel> users = [
    UserModel(id: 1, name: 'Akram cheraifia', phone: '+213557952363'),
    UserModel(id: 2, name: 'Mohamed cheraifia', phone: '+213557952363'),
    UserModel(id: 3, name: 'Amine cheraifia', phone: '+213557952363'),
    UserModel(id: 4, name: 'Yassine cheraifia', phone: '+213557952363'),
    UserModel(id: 5, name: 'Younes cheraifia', phone: '+213557952363'),
    UserModel(id: 6, name: 'Hassan cheraifia', phone: '+213557952363'),
    UserModel(id: 7, name: 'Hassan cheraifia', phone: '+213557952363'),
    UserModel(id: 8, name: 'Hassan cheraifia', phone: '+213557952363'),
    UserModel(id: 9, name: 'Hassan cheraifia', phone: '+213557952363'),
    UserModel(id: 10, name: 'Hassan cheraifia', phone: '+213557952363'),
    UserModel(id: 11, name: 'Hassan cheraifia', phone: '+213557952363'),
    UserModel(id: 12, name: 'Hassan cheraifia', phone: '+213557952363'),
    UserModel(id: 13, name: 'Hassan cheraifia', phone: '+213557952363'),
    UserModel(id: 14, name: 'Hassan cheraifia', phone: '+213557952363'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('User'),
        ),
        body: ListView.separated(
          itemBuilder: ((context, index) => buildUserData(users[index])),
          separatorBuilder: ((context, index) => Padding(
                padding: const EdgeInsetsDirectional.only(start: 10),
                child: Container(
                  width: double.infinity,
                  height: 1,
                  color: Colors.grey,
                ),
              )),
          itemCount: users.length,
        ));
  }

  buildUserData(UserModel user) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.black,
            radius: 30,
            child: Text(
              '${user.id}',
              style: const TextStyle(color: Colors.white, fontSize: 40),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${user.name}',
                style: const TextStyle(color: Colors.black, fontSize: 20),
              ),
              Text(
                '${user.phone}',
                style: const TextStyle(color: Colors.black, fontSize: 20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
