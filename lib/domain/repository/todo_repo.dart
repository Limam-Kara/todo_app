
import '../model/todo.dart';

abstract class TodoRepo{
  //get list
  Future<List<Todo>> getTodo();
  //add
  Future<void> addTodo(Todo newTodo);
  //update
  Future<void> updateTodo(Todo newTodo);
 //delete
  Future<void> deleteTodo(Todo todo);

}