import 'package:flutter/material.dart';

class StateFulWidget extends StatefulWidget {
  const StateFulWidget({super.key});

  @override
  State<StateFulWidget> createState() => _StateFulWidgetState();
}

class _StateFulWidgetState extends State<StateFulWidget> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Statefull'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(DateTime.now().toString()),
          Container(
            color: Colors.white,
            child: Center(
              child: Text(
                count.toString(),
                style: const TextStyle(fontSize: 50),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count++;
          print(count++);
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
