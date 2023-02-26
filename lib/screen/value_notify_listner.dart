import 'package:flutter/material.dart';

class NotifyListnerScreen extends StatelessWidget {
  NotifyListnerScreen({super.key});

  ValueNotifier<int> _center = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateless to Statefull'),
        centerTitle: true,
      ),
      body: Center(
          child: ValueListenableBuilder(
              valueListenable: _center,
              builder: (context, value, child) {
                return Text(
                  _center.value.toString(),
                  style: TextStyle(fontSize: 18),
                );
              })),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _center.value++;
          print(_center.value.toString());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
