import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todo/model/todo.dart';

class TodoCreateViewModel {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> addTodoToFirebase(Todo todo) async {
    try {
      await _firestore.collection('todos').add(todo.toMap());
    } catch (e) {
      print(e);
    }
  }
}