class Student {
  String name;
  String faculty;
  String major;
  String program;
  double gpa;
  int sks;
  int currentSemester;

  Student({
    required this.name,
    required this.faculty,
    required this.major,
    required this.program,
    required this.gpa,
    required this.sks,
    required this.currentSemester,
});
}

var studentData =
  Student(
    name: 'Mohamad Daffa Argakoesoemah',
    faculty: 'STEI',
    major: 'Teknik Informatika',
    program: 'Reguler',
    gpa: 3.5,
    sks: 56,
    currentSemester: 6,
  );