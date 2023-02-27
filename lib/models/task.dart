class Task {
  DateTime startTime;
  DateTime endTime;
  String title;
  String? description;

  Task(
      {required this.startTime,
      required this.endTime,
      required this.title,
      this.description});
}
