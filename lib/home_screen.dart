import 'dart:math';

import 'package:counter_app/main.dart';

import './add_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.fn});
  final Function fn;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map> todoList = [
    {
      "title": "Task1",
      "id": "1",
    },
    {
      "title": "Task 2",
      "id": "2",
    },
    {
      "title": "Task 3",
      "id": "3",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "TODO",
          style: Theme.of(context).textTheme.displayLarge,
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return AddScreen(
                  addFunc: add,
                );
              }));
            },
            icon: const Icon(Icons.arrow_forward),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //

          MyApp.of(context).toogleBrrightness();
        },
        child: Theme.of(context).brightness == Brightness.dark
            ? Icon(Icons.light_mode_outlined)
            : Icon(Icons.light_mode),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...todoList.map((e) {
              return TodoCardWidget(
                id: e['id'],
                title: e['title'],
                fn: remove,
                key: ValueKey(e['id']),
              );
            })
          ],
        ),
      ),
    );
  }

  void add(Map item) {
    setState(() {
      todoList.add(item);
    });
  }

  void remove(String id) {
    setState(() {
      todoList.removeWhere((item) {
        return item['id'] == id;
      });
    });
  }
}

class TodoCardWidget extends StatefulWidget {
  const TodoCardWidget({
    super.key,
    required this.title,
    required this.fn,
    required this.id,
  });
  final String title;
  final Function fn;
  final String id;

  @override
  State<TodoCardWidget> createState() => _TodoCardWidgetState();
}

class _TodoCardWidgetState extends State<TodoCardWidget> {
  List<Color> colors = [
    Colors.redAccent, //0
    Colors.black38, //1
    const Color.fromARGB(255, 190, 185, 58), //2
  ];
  late Color colorVal;
  @override
  void initState() {
    super.initState();
    var index = Random().nextInt(3); //0-2
    colorVal = colors[index];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorVal,
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
          Text(widget.title),

          // Button
          ElevatedButton(
            onPressed: () {
              widget.fn(widget.id);
            },
            child: Text("Delete"),
          ),
        ],
      ),
    );
  }
}
