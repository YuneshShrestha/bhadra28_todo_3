import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({super.key, required this.addFunc});
  final Function addFunc;

  @override
  Widget build(BuildContext context) {
    TextEditingController txtCtrl = TextEditingController();
    GlobalKey<FormState> key = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Items",
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
      body: Form(
        key: key,
        child: Container(
          margin: const EdgeInsets.all(6.0),
          child: Column(
            children: [
              // Input field
              // Validfation
              TextFormField(
                controller: txtCtrl,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
                validator: (data) {
                  if (data == null || data.isEmpty) {
                    return 'Please enter the data';
                  }
                },
              ),
              Switch.adaptive(value: true, onChanged: (_) {}),
              // Button
              ElevatedButton(
                onPressed: () {
                  if (key.currentState!.validate()) {
                    addFunc(
                      {
                        "title": txtCtrl.value.text,
                        "id": DateTime.now().toString(),
                      },
                    );
                    Navigator.pop(context);
                  }
                },
                child: const Text("Add"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
