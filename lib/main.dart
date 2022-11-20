import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'bottom_navigiation_provider.dart';
import 'count_provider.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MultiProvider(
          // MultiProvider를 통해 변화에 대해 구독
            providers: [
              ChangeNotifierProvider(
                  create: (BuildContext context) => CountProvider()), // count_provider.dart
              ChangeNotifierProvider(
                  create: (BuildContext context) => BottomNavigationProvider())
            ],
            child: Home(),
          // home.dart // child 하위에 모든 것들은 CountProvider에 접근 할 수 있다.
        ));
  }
}