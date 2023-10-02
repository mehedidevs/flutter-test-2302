import 'package:flutter/material.dart';

import 'DetailScreen.dart';

class Home extends StatelessWidget {
   Home({super.key});

  final todos = List.generate(
    20,
        (i) => Todo(
      'Todo $i',
      'A description of what needs to be done for Todo $i',
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
    color: Colors.blueGrey,
      child: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todos[index].title),

            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(todo: todos[index]),
                ),
              );

            },
          );
        },
      ),
    );
  }
}

class Todo {
  final String title;
  final String description;

  const Todo(this.title, this.description);
}
