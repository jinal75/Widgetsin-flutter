// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class Task {
  final String task_name;
  final String description;
  final String age;

  Task(this.task_name, this.description,this.age);
}

void main() {
  runApp(MaterialApp(
    title: 'Passing Data',
    home: PassData(
      // generate list
      name: List.generate(
        5, (list) => Task(
          'Task $list',
          'Task Description $list',
              'Task age $list',
        ),
      ),
    ),
  ));
}

// Home screen
class PassData extends StatelessWidget {
  final List<Task> name;

  const PassData({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GeeksForGeeks'),
        backgroundColor: Colors.green,
      ),
      // List builder

      body: ListView.builder(
        itemCount: name.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(name[index].task_name),
            onTap: () {
              Text(name[index].description);
              Text(name[index].age);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(task: name[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}


class DetailScreen extends StatelessWidget {

  final Task task;
  const DetailScreen({Key? key, required this.task}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(task.task_name),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Text(task.description),
          Text(task.age),
          Text(task.task_name),
        ], // child: Text(task.description),
      ),
    );
  }
}
