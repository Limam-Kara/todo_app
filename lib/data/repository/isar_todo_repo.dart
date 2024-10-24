import 'package:isar/isar.dart';
import 'package:todo_app/data/models/isar_todo.dart';
import 'package:todo_app/domain/model/todo.dart';

import '../../domain/repository/todo_repo.dart';

class IsarTodoRepo implements TodoRepo {

  final Isar db;

  IsarTodoRepo(this.db);

  @override
  Future<void> addTodo(newTodo) {
   final todoIsar=TodoIsar.fromDomain(newTodo);

   return db.writeTxn(()=> db.todoIsars.put(todoIsar));
  }

  @override
  Future<void> deleteTodo(todo) async {
    await db.writeTxn(()=>db.todoIsars.delete(todo.id));
  }



  @override
  Future<void> updateTodo(newTodo) {
    final todoIsar=TodoIsar.fromDomain(newTodo);

    return db.writeTxn(()=> db.todoIsars.put(todoIsar));
  }

  @override
  Future<List<Todo>> getTodo() async {
    final todos =await db.todoIsars.where().findAll();
    return todos.map((todoIsar)=> todoIsar.toDomain()).toList();
  }



}