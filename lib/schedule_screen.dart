import 'package:flutter/material.dart';
import 'package:sistem_akademik/main_screen.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'dart:ui';
import 'package:intl/intl.dart';
import 'dart:core';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  _ScheduleScreenState createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  String _subjectText='', _startTimeText='', _endTimeText='', _dateText='', _timeDetails='', _lecturerText='',_courseCodeText='', _classroomText='';

  @override

  void calendarTapped(CalendarTapDetails details) {
    if (details.targetElement == CalendarElement.appointment ||
        details.targetElement == CalendarElement.agenda) {
      final Appointment appointmentDetails = details.appointments![0];
      _subjectText = appointmentDetails.eventName;
      _dateText = DateFormat('dd MMMM, yyyy').format(appointmentDetails.from).toString();
      _startTimeText = DateFormat('hh:mm a').format(appointmentDetails.from).toString();
      _endTimeText = DateFormat('hh:mm a').format(appointmentDetails.to).toString();
      _timeDetails = '$_startTimeText - $_endTimeText';
      _courseCodeText = appointmentDetails.courseCode;
      _lecturerText = appointmentDetails.lecturer;
      _classroomText = appointmentDetails.classroom;

    }
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.lightBlue.shade50,
          title: Container(
            child: Text('$_courseCodeText - $_subjectText'),
            ),
          content: Container(
            height: 80,
            child: Column(
                children: [
                  Text('Jadwal: $_timeDetails'),
                  SizedBox(height: 8.0),
                  Text('Dosen: $_lecturerText'),
                  SizedBox(height: 8.0),
                  Text('Kelas: $_classroomText'),
                ]
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: Text('OK')
            ),
          ],
        );
      }
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.indigo.shade900,
          onPressed: () {
            Navigator.pop(context);
          },
        )
      ),
      body: Stack(
        children: [
          BackgroundImage(),
          SafeArea(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                  child: Text(
                    'Jadwal Perkuliahan Mahasiswa',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'NotoSansKR',
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo.shade900,
                    ),
                  ),
                ),
                Expanded(
                  child: SfCalendar(
                    initialDisplayDate: DateTime(2021, 01, 25),
                    initialSelectedDate: DateTime(2021, 01, 25),
                    headerStyle: CalendarHeaderStyle(
                      textAlign: TextAlign.left,
                      textStyle: TextStyle(
                        fontFamily: 'NotoSansKR',
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo.shade900,
                      )
                    ),
                    backgroundColor: Colors.transparent,
                    view: CalendarView.schedule,
                    dataSource: getCalendarDataSource(),
                    onTap: calendarTapped,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

MeetingDataSource getCalendarDataSource() {
  List<Appointment> appointments = <Appointment>[];
  appointments.add(Appointment(
    from: DateTime(2021, 01, 25, 07, 00),
    to: DateTime(2021, 01, 25, 07, 00).add(const Duration(hours: 2)),
    recurrenceRule: 'FREQ=WEEKLY;BYDAY=MONDAY;COUNT=15',
    eventName: 'Pendidikan Anti Korupsi',
    courseCode: 'KU4079',
    lecturer: 'Dr. Wahid',
    classroom: '02',
    background: Colors.red));
  appointments.add(Appointment(
      from: DateTime(2021, 01, 25, 10, 00),
      to: DateTime(2021, 01, 25, 10, 00).add(const Duration(hours: 2)),
      recurrenceRule: 'FREQ=WEEKLY;BYDAY=MONDAY;COUNT=15',
      eventName: 'Pengembangan Aplikasi pada Platform Khusus',
      courseCode: 'IF3210',
      lecturer: 'Budi, S.T. M.T.',
      classroom: '01',
      background: Colors.blue));
  appointments.add(Appointment(
      from: DateTime(2021, 01, 25, 13, 00),
      to: DateTime(2021, 01, 25, 13, 00).add(const Duration(hours: 2)),
      recurrenceRule: 'FREQ=WEEKLY;BYDAY=MONDAY;COUNT=15',
      eventName: 'Grafika Komputer',
      courseCode: 'IF3260',
      lecturer: 'Tia, S.T. M.T.',
      classroom: '02',
      background: Colors.green));
  appointments.add(Appointment(
      from: DateTime(2021, 01, 25, 16, 00),
      to: DateTime(2021, 01, 25, 16, 00).add(const Duration(hours: 2)),
      recurrenceRule: 'FREQ=WEEKLY;BYDAY=MONDAY;COUNT=15',
      eventName: 'Sistem Paralel dan Terdistribusi',
      courseCode: 'IF3230',
      lecturer: 'Dr. Bambang, M.Sc.',
      classroom: '03',
      background: Colors.purple));
  appointments.add(Appointment(
      from: DateTime(2021, 01, 26, 08, 00),
      to: DateTime(2021, 01, 26, 08, 00).add(const Duration(hours: 2)),
      recurrenceRule: 'FREQ=WEEKLY;BYDAY=TUESDAY;COUNT=15',
      eventName: 'Agama dan Etika Islam',
      courseCode: 'KU2061',
      lecturer: 'Dr. Susilo, M.Ag.',
      classroom: '01',
      background: Colors.deepPurple));
  appointments.add(Appointment(
      from: DateTime(2021, 01, 26, 11, 00),
      to: DateTime(2021, 01, 26, 11, 00).add(const Duration(hours: 2)),
      recurrenceRule: 'FREQ=WEEKLY;BYDAY=TUESDAY;COUNT=15',
      eventName: 'Pembelajaran Mesin',
      courseCode: 'IF3270',
      lecturer: 'Dr. Bambang',
      classroom: '01',
      background: Colors.lightBlueAccent));
  appointments.add(Appointment(
      from: DateTime(2021, 01, 26, 13, 30),
      to: DateTime(2021, 01, 26, 13, 30).add(const Duration(hours: 2)),
      recurrenceRule: 'FREQ=WEEKLY;BYDAY=TUESDAY;COUNT=15',
      eventName: 'Socio-informatika dan Profesionalisme',
      courseCode: 'IF3280',
      lecturer: 'Reno, Ph.D.',
      classroom: '03',
      background: Colors.deepOrange));
  appointments.add(Appointment(
      from: DateTime(2021, 01, 27, 07, 00),
      to: DateTime(2021, 01, 27, 07, 00).add(const Duration(hours: 2)),
      recurrenceRule: 'FREQ=WEEKLY;BYDAY=WEDNESDAY;COUNT=15',
      eventName: 'Proyek Perangkat Lunak',
      courseCode: 'IF3250',
      lecturer: 'Dr. Sutrisno, S.T, M.T.',
      classroom: '01',
      background: Colors.blueGrey));
  appointments.add(Appointment(
      from: DateTime(2021, 01, 27, 15, 30),
      to: DateTime(2021, 01, 27, 15, 30).add(const Duration(hours: 2)),
      recurrenceRule: 'FREQ=WEEKLY;BYDAY=WEDNESDAY;COUNT=15',
      eventName: 'Grafika Komputer',
      courseCode: 'IF3260',
      lecturer: 'Tia, S.T. M.T.',
      classroom: '02',
      background: Colors.green));
  appointments.add(Appointment(
      from: DateTime(2021, 01, 28, 08, 30),
      to: DateTime(2021, 01, 28, 08, 30).add(const Duration(hours: 2)),
      recurrenceRule: 'FREQ=WEEKLY;BYDAY=THURSDAY;COUNT=15',
      eventName: 'Pengembangan Aplikasi pada Platform Khusus',
      courseCode: 'IF3210',
      lecturer: 'Budi, S.T. M.T.',
      classroom: '01',
      background: Colors.blue));
  appointments.add(Appointment(
      from: DateTime(2021, 01, 28, 13, 30),
      to: DateTime(2021, 01, 28, 13, 30).add(const Duration(hours: 2)),
      recurrenceRule: 'FREQ=WEEKLY;BYDAY=THURSDAY;COUNT=15',
      eventName: 'Proyek Perangkat Lunak',
      courseCode: 'IF3250',
      lecturer: 'Dr. Sutrisno, S.T, M.T.',
      classroom: '01',
      background: Colors.blueGrey));
  appointments.add(Appointment(
      from: DateTime(2021, 01, 28, 16, 00),
      to: DateTime(2021, 01, 28, 16, 00).add(const Duration(hours: 2)),
      recurrenceRule: 'FREQ=WEEKLY;BYDAY=THURSDAY;COUNT=15',
      eventName: 'Sistem Paralel dan Terdistribusi',
      courseCode: 'IF3230',
      lecturer: 'Dr. Bambang, M.Sc.',
      classroom: '03',
      background: Colors.purple));
  appointments.add(Appointment(
      from: DateTime(2021, 01, 29, 07, 30),
      to: DateTime(2021, 01, 29, 07, 30).add(const Duration(hours: 2)),
      recurrenceRule: 'FREQ=WEEKLY;BYDAY=FRIDAY;COUNT=15',
      eventName: 'Proyek Perangkat Lunak',
      courseCode: 'IF3250',
      lecturer: 'Dr. Sutrisno, S.T, M.T.',
      classroom: '01',
      background: Colors.blueGrey));
  appointments.add(Appointment(
      from: DateTime(2021, 01, 29, 16, 00),
      to: DateTime(2021, 01, 29, 16, 00).add(const Duration(hours: 2)),
      recurrenceRule: 'FREQ=WEEKLY;BYDAY=FRIDAY;COUNT=15',
      eventName: 'Socio-informatika dan Profesionalisme',
      courseCode: 'IF3280',
      lecturer: 'Reno, Ph.D.',
      classroom: '03',
      background: Colors.deepOrange));
  return MeetingDataSource(appointments);
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Appointment> source) {
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return appointments![index].from;
  }

  @override
  DateTime getEndTime(int index) {
    return appointments![index].to;
  }

  @override
  String getRecurrenceRule(int index) {
    return appointments![index].recurrenceRule;
  }

  @override
  String getSubject(int index) {
    return appointments![index].eventName;
  }

  @override
  Color getColor(int index) {
    return appointments![index].background;
  }
}
class Appointment {
  String eventName;
  String courseCode;
  String lecturer;
  String classroom;
  DateTime from;
  DateTime to;
  String recurrenceRule;
  Color background;

  Appointment({
    required this.eventName,
    required this.courseCode,
    required this.lecturer,
    required this.classroom,
    required this.from,
    required this.to,
    required this.recurrenceRule,
    required this.background,
});
}