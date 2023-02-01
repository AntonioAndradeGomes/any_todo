class TaskModel {
  String title;
  bool isImportant;
  DateTime? completionDate;
  String? anotation;
  DateTime? reminderDate;
  DateTime? endDate;
  DateTime createdAt;
  DateTime updatedAt;
  TaskModel({
    required this.title,
    required this.isImportant,
    this.completionDate,
    this.anotation,
    this.reminderDate,
    this.endDate,
    required this.createdAt,
    required this.updatedAt,
  });
}
