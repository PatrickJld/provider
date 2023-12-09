import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_assignment/provider/provider.dart';
import 'package:provider_assignment/screen/dataList.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => NameProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Provider",
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          useMaterial3: true,
        ),
        home: const DataList(Data: [
          'Aby',
          'Aish',
          'Ayan',
          'Ben',
          'Bob',
          'Charlie',
          'Cook',
          'Carline',
        ]));
  }
}
