class Todo {
  int id;
  String title;
  String description;
  bool isCompleted;

  Todo({
    required this.id,
    required this.title,
    required this.description,
    required this.isCompleted,
  });

  factory Todo.fromDocumentSnapshot(DocumentSnapshot doc) {
    return Todo(
      id: doc.id,
      title: doc['title'],
      description: doc['description'],
      isCompleted: doc['isCompleted'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'isCompleted': isCompleted,
    };
  }
}