import 'package:flutter/material.dart';
import 'models/todo_item.dart';

void main() => runApp(todoApp());

class todoApp extends StatelessWidget {
  const todoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'todo app',
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  List<TodoItem> todoList = [{
    index: '0',
    title: 'title 1',
    description: 'description 1',
  }]

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Todo appBar')),
        body: ListView.builder(
          itemCount: todoList.length,
          itemBuilder: (context, index) => Container(
              child: Center(child: Text(todoList[index], style:TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
              color: Colors.green,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(10),
            )),
        );
  }
}
