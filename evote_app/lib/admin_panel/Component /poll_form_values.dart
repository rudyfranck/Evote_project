class PollFormValues {
  String title = "" ;
  String description = "" ;
  int duration = 1;
  String candidate ="";

  @override
  String toString() => '$title, $description, $duration, $candidate';
}