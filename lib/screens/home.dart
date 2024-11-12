import 'package:flutter/material.dart';
import 'package:myapp/widgets/item_card.dart';
import 'package:myapp/widgets/left_drawer.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final List<ItemCardInfo> items = [
    ItemCardInfo(
        "Show Products", Icons.laptop, const Color.fromRGBO(73, 1, 84, 1)),
    ItemCardInfo(
        "Add a Product", Icons.add, const Color.fromRGBO(0, 12, 139, 1)),
    ItemCardInfo("Logout", Icons.logout, const Color.fromRGBO(2, 132, 132, 1)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: const Text("Mango E-Commerce"),
        ),
        drawer: LeftDrawer(),
        body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
              // Column is also a layout widget. It takes a list of children and
              // arranges them vertically. By default, it sizes itself to fit its
              // children horizontally, and tries to be as tall as its parent.
              //
              // Column has various properties to control how it sizes itself and
              // how it positions its children. Here we use mainAxisAlignment to
              // center the children vertically; the main axis here is the vertical
              // axis because Columns are vertical (the cross axis would be
              // horizontal).

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GridView.count(
                  primary: true,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 3,
                  // Agar grid menyesuaikan tinggi kontennya.
                  shrinkWrap: true,

                  // Menampilkan ItemCard untuk setiap item dalam list items.
                  children: items.map((ItemCardInfo item) {
                    return ItemCard(item);
                  }).toList(),
                ),
              ]),
        ));
  }
}
