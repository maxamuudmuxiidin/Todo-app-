class Task {
  final String id;
  final String title;
  bool completed;
  final String user;
  final DateTime createdAt;

  Task({
    required this.id,
    required this.title,
    this.completed = false,
    required this.user,
    required this.createdAt,
  });

  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
      id: json['_id'],
      title: json['title'],
      completed: json['completed'] ?? false,
      user: json['user'],
      createdAt: DateTime.parse(json['createdAt']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'title': title,
      'completed': completed,
      'user': user,
      'createdAt': createdAt.toIso8601String(),
    };
  }

 

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Task &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          title == other.title &&
          completed == other.completed &&
          user == other.user &&
          createdAt == other.createdAt;

  @override
  int get hashCode =>
      id.hashCode ^
      title.hashCode ^
      completed.hashCode ^
      user.hashCode ^
      createdAt.hashCode;

  @override
  String toString() {
    return 'Task{id: $id, title: $title, completed: $completed, user: $user, createdAt: $createdAt}';
  }
}
