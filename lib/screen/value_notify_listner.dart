import 'package:flutter/material.dart';

class NotifyListnerScreen extends StatelessWidget {
  NotifyListnerScreen({super.key});

  ValueNotifier<int> _center = ValueNotifier<int>(0);
  ValueNotifier<bool> passwd = ValueNotifier<bool>(true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateless to Statefull'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ValueListenableBuilder(
              valueListenable: passwd,
              builder: (context, value, child) {
                return TextFormField(
                  obscureText: passwd.value,
                  decoration: InputDecoration(
                      hintText: "Password",
                      suffix: InkWell(
                        onTap: () {
                          passwd.value = !passwd.value;
                        },
                        child: Icon(passwd.value
                            ? Icons.visibility_off_outlined
                            : Icons.visibility),
                      )),
                );
              }),
          Center(
              child: ValueListenableBuilder(
                  valueListenable: _center,
                  builder: (context, value, child) {
                    return Text(
                      _center.value.toString(),
                      style: TextStyle(fontSize: 18),
                    );
                  })),
        ],
      ),
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
