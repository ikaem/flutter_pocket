class TodoEntity {
  const TodoEntity({
    required this.id,
    required this.title,
    required this.createdDate,
  });

  final int id;
  final String title;
  final int createdDate;
}
