import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvm_architecture/model/user.dart';
import 'package:mvvm_architecture/ui/main_page.dart';

import 'bloc/user_bloc.dart';

/* MVVM (Model-VIEW-VIEW MODEL)
 * View: Komponen yang berfungsi menampilkan state dari sistem dan menerima 
 * input dari user -> widget / page
 * 
 * Tugas View:
 * - Memberitahukan kepada View Model jika ada input dari user
 * - Merespon perubahan state yang akan diberikan oleh View Model dan menampilkannya kepada user
 * 
 * 
 * Model: Komponen yang mempresentasikan objek yang terkait di dalam sistem
 * Contoh: class User,Product,Store
 * 
 * Tugas View Model:
 * Merespon input yang diberikan oleh View.
 * View Model tidak tahu  dan tidak akan terkait dengan View manapun, ia hanya memberitahukan
 * perubahan state pada view yang akan membutuhkan/terkait
 * 
 * 
 * Tujuan MVVM 
 * Memisahkan state dan logic dari View menjadi sebuah komponen lain yang disebut 
 * View Model
 * 
 * 
 * 
 */

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => UserBloc(initialState: UninitializedUser),
        child:  MainPage(),
      ),
    );
  }
}
