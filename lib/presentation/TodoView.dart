

import 'package:flutter/material.dart';

class TodoView extends StatelessWidget {
  const TodoView({super.key}) ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child:const Icon(Icons.add),
          onPressed: ()=>Void _showAddTodoBox(context)
      ) ,
    );
  }

  void _showAddTodoBox(BuildContext context) {
    inal todoC
  }
}
