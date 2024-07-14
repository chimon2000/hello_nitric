import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await Dio().get('http://localhost:4005/hello/name');
  await Dio().get('http://localhost:4005/hello/name',
      options: Options(headers: {'Authorization': ''}));
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
