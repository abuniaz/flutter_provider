import 'package:flutter/material.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  List<int> selectedItem = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favourite Screen"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 100,
              itemBuilder: ((context, index) {
                return ListTile(
                  onTap: () {
                    selectedItem.add(index);
                    setState(() {});
                  },
                  title: Text('Item ' + index.toString()),
                  trailing: Icon(selectedItem.contains(index)
                      ? Icons.favorite
                      : Icons.favorite_border_outlined),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
