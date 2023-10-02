import 'package:flutter/material.dart';

import 'Home.dart';

class DetailScreen  extends StatelessWidget {
  const DetailScreen ({super.key, required this.todo});

  // Declare a field that holds the Todo.
  final Todo todo;

  @override
  Widget build(BuildContext context) {
    // Use the Todo to create the UI.
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(todo.description),
          ),

          Padding(
            padding: const EdgeInsets.all(8),
            child: ElevatedButton(
              onPressed: () {
                // Pop here with "Yep"...

                Navigator.pop(context, 'Yep!');
              },
              child: const Text('Yep!'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: ElevatedButton(
              onPressed: () {
                // Pop here with "Nope"...
                Navigator.pop(context, 'Nope.');
              },
              child: const Text('Nope.'),
            ),
          )

        ],
      ),
    );
  }

}
