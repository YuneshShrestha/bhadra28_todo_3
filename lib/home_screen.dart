import 'package:counter_app/add_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List todoList = ["Items1", "Items2"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TODO"),
        actions: [
          ElevatedButton(
            onPressed: () {
              add("Kurkure");
            },
            child: Text("Add"),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return const AddScreen();
              }));
            },
            icon: const Icon(Icons.arrow_forward),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // loop: for, do-while, for-in , while, forEach, map

            // for (var d in todoList) Text(d)

            ...todoList.map((e) {
              return Text(e);
            })
          ],
        ),
      ),
    );
  }

  void add(String item) {
    setState(() {
      todoList.add(item);
    });
  }

  void remove(int index) {
    setState(() {
      todoList.removeAt(index);
    });
  }
}

class TodoCardWidget extends StatelessWidget {
  const TodoCardWidget({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      margin: const EdgeInsets.only(
        left: 8.0,
        right: 8.0,
        bottom: 8.0,
      ),
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Text
          const Text("data"),

          // Button
          ElevatedButton(
            onPressed: () {},
            child: Text("Delete"),
          ),
        ],
      ),
    );
  }
}
