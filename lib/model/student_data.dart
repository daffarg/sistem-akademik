class Student {
  String name;
  String nim;
  String faculty;
  String major;
  String program;
  String lecturer;
  double gpa;
  int sks;
  int currentSemester;
  String academicYear;

  Student({
    required this.name,
    required this.nim,
    required this.faculty,
    required this.major,
    required this.program,
    required this.lecturer,
    required this.gpa,
    required this.sks,
    required this.currentSemester,
    required this.academicYear,
});
}

var studentData =
  Student(
    name: 'Mohamad Daffa Argakoesoemah',
    nim: '13520185',
    faculty: 'STEI',
    major: 'Teknik Informatika',
    program: 'Reguler',
    lecturer: 'Dr. Budi, S.T., M.T.',
    gpa: 3.5,
    sks: 56,
    currentSemester: 6,
    academicYear: '2021/2021'
  );