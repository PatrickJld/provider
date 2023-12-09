import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_assignment/provider/provider.dart';

class DataDetail extends StatelessWidget {
  const DataDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final choosenData = Provider.of<NameProvider>(context).choosenData;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Detail'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text(
          '$choosenData',
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
