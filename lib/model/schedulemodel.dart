class ScheduleModel {
  final String title;
  final String subtitle;
  final String desc;
  bool isDone;

  ScheduleModel({
    required this.title,
    required this.subtitle,
    required this.desc,
    this.isDone = false
  });

  void toggleDone(){
    isDone = !isDone;
  }
}