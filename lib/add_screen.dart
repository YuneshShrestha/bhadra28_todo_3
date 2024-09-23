import 'package:flutter/material.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Items"),
      ),
      body: Container(
        margin: const EdgeInsets.all(6.0),
        child: Column(
          children: [
            // Input field
            // Validfation
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
  
            // Button
            ElevatedButton(
              onPressed: () {},
              child: const Text("Add"),
            ),
          ],
        ),
      ),
    );
  }
}
