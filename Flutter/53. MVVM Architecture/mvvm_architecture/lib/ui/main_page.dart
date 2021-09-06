import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvm_architecture/bloc/user_bloc.dart';
import 'package:mvvm_architecture/model/user.dart';
import 'package:mvvm_architecture/ui/user_card.dart';

class MainPage extends StatelessWidget {
  final Random random = Random();
  @override
  Widget build(BuildContext context) {
    final UserBloc bloc = BlocProvider.of<UserBloc>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("MainPAge MVVM"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              side: BorderSide(width: 2, color: Colors.blue),
            ),
            onPressed: () {
              // ignore: unused_label
              color:
              (Colors.amber);
              bloc.initialState(random.nextInt(10) + 1);
            },
            child: Text("Click"),
          ),
          BlocBuilder<UserBloc, User>(
              builder: (context, user) =>
                  (user is UninitializedUser) ? Container() : UserCard(user))
        ],
      ),
    );
  }
}
