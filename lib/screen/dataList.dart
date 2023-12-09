import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_assignment/provider/provider.dart';
import 'package:provider_assignment/screen/dataDetail.dart';

class DataList extends StatelessWidget {
  const DataList({super.key, required this.Data});

  final List<String> Data;

  @override
  Widget build(BuildContext context) {
    final nameProvider = Provider.of<NameProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('List Data'),
      ),
      body: ListView.builder(
        itemCount: Data.length,
        itemBuilder: (ctx, index) {
          return TextButton(
            onPressed: () {
              nameProvider.setName(Data[index]);
              Navigator.of(ctx).push(
                MaterialPageRoute(
                  builder: (ctx) => const DataDetail(),
                ),
              );
            },
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                Data[index],
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
