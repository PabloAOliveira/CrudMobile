import 'package:flutter/material.dart';
import 'package:helloword/components/user_tile.dart';
import 'package:helloword/data/dummy_users.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final users = {...DUMMY_USERS};

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Usuários'),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
        ],
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (ctx, i) => UserTile(users.values.elementAt(i)),
      ),
    );
  }
}
