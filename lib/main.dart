import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_api/controller/todo_provider.dart';
import 'package:todo_api/view/todo_list/todo_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => TodoProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData.dark(),
        home: const TodoListScreen(),
      ),
    );
  }
}
