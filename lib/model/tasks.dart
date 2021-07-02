class Task {
  String courseCode;
  String courseName;
  String classroom;
  String taskTitle;
  String taskDetails;
  String deadline;

  Task({
    required this.courseCode,
    required this.courseName,
    required this.classroom,
    required this.taskTitle,
    required this.taskDetails,
    required this.deadline,
});
}

var tasksList = [
  Task(
    courseCode: 'KU4079',
    courseName: 'Pendidikan Anti Korupsi',
    classroom: '02',
    taskTitle: 'Tugas Essai 1',
    taskDetails: 'Buatlah essai dengan tema kontribusi mahasiswa dalam mewujudkan kampus yang berintegritas',
    deadline: '30 Maret 2021 23.59 WIB',
  ),
  Task(
    courseCode: 'IF3280',
    courseName: 'Socio-informatika dan Profesionalisme',
    classroom: '03',
    taskTitle: 'Tugas 2',
    taskDetails: 'Jelaskan pemanfaatan TIK di berbagai bidang',
    deadline: '1 April 2021 23.59 WIB',
  ),
  Task(
    courseCode: 'IF3270',
    courseName: 'Pembelajaran Mesin',
    classroom: '01',
    taskTitle: 'Tugas 3',
    taskDetails: '1. Jelaskan kelebihan dan kekurangan SVM dibanding Naïve Bayes\n2. Jelaskan kelebihan dan kekurangan SVM dibanding Multi-layer Perceptron\n3. Jelaskan kelebihan dan kekurangan SVM dibanding Probabilistic Neural Network\n',
    deadline: '28 Maret 2021 20.00 WIB',
  ),
  Task(
    courseCode: 'IF3260',
    courseName: 'Grafika Komputer',
    classroom: '02',
    taskTitle: 'Tugas 1 (Kelompok) ',
    taskDetails: 'Kerjakan tugas dibawah ini secara berkelompok!\n1. Jelaskan pengertian grafika komputer secara umum\n2. Jelaskan secara singkat sejarah grafika komputer\n3. Jelaskan aplikasi grafika komputer di berbagai bidang',
    deadline: '3 April 2021 13.59 WIB',
  ),
  Task(
    courseCode: 'KU2061',
    courseName: 'Agama dan Etika Islam',
    classroom: '03',
    taskTitle: 'Tugas 4',
    taskDetails: 'Buatlah essai mengenai fungsi ibadah dalam membangun akhlak di kalangan mahasiswa',
    deadline: '2 April 2021 23.59 WIB',
  ),
];