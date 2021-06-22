import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sistem_akademik/main_screen.dart';
import 'package:sistem_akademik/model/student_data.dart';
import 'package:sistem_akademik/model/study_plan_data.dart';

class StudyPlanScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.blueGrey.shade900,
            onPressed: () {
              Navigator.pop(context);
            },
          )
      ),
      body: Stack(
        children: [
          BackgroundImage(),
          SingleChildScrollView(
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                    child: Text(
                      'Rencana Studi',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'NotoSansKR',
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey.shade900,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                    margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white.withOpacity(0.1),
                    ),
                    child: Column(
                      children: [
                        Center(
                          child: Column(
                            children: [
                              Text(
                                'Rencana Studi Mahasiswa',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18.0,
                                ),
                              ),
                              Text(
                                'Semester ${studentData.currentSemester} Tahun ${studentData.academicYear}',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.0,
                                )
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                            height: 20.0,
                        ),
                        Table(
                          border: TableBorder(horizontalInside: BorderSide(color: Colors.black, width: 0.05)),
                          children: [
                            TableRow(
                                children: [
                                  Text(
                                    'Nama',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(studentData.name),
                                ]
                            ),
                            TableRow(
                                children: [
                                  Text(
                                    'NIM',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(studentData.nim),
                                ]
                            ),
                            TableRow(
                                children: [
                                  Text(
                                    'Fakultas',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(studentData.faculty),
                                ]
                            ),
                            TableRow(
                                children: [
                                  Text(
                                      'Program Studi',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                      )
                                  ),
                                  Text(studentData.major),
                                ]
                            ),
                            TableRow(
                                children: [
                                  Text(
                                    'Kelas',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(studentData.program),
                                ]
                            ),
                            TableRow(
                              children: [
                                Text(
                                  'Dosen Wali',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(studentData.lecturer),
                              ],
                            ),
                            TableRow(
                                children: [
                                  Text(
                                    'IPK',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text((studentData.gpa).toString()),
                                ]
                            ),
                            TableRow(
                                children: [
                                  Text(
                                    'SKS',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text('Lulus ${(studentData.sks).toString()} SKS'),
                                ]
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                    margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white.withOpacity(0.1),
                    ),
                    child: Flex(
                      direction: Axis.horizontal,
                      children: [
                        Flexible(
                          child: DataTable(
                            dividerThickness: 0.4,
                            dataRowHeight: 60.0,
                            columns: [
                              DataColumn(
                                label: Text(
                                  'Kode',
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  'Mata Kuliah',
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  'SKS',
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  'Kelas',
                                ),
                              ),
                            ],
                            rows:
                              studyPlanData
                                  .map(
                                ((element) => DataRow(
                                cells: <DataCell>[
                                  DataCell(Text(element['Code'])),
                                  DataCell(Text(element['Name'])),
                                  DataCell(Text(element['SKS'].toString())),
                                  DataCell(Text(element['Classroom'])),
                                ],
                              )),
                              ).toList(),
                          ),
                        )
                      ]
                    )
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                    margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white.withOpacity(0.1),
                    ),
                    child: Flex(
                      direction: Axis.horizontal,
                      children: [
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Jumlah mata kuliah yang diambil: ${courseTotal.toString()}',
                              ),
                              SizedBox(
                                height: 8.0,
                              ),
                              Text(
                                'Total SKS: ${sksTotal.toString()}',
                              ),
                            ],
                          ),
                        ),
                      ]
                    )
                  )
                ]
              )
            ),
          )
        ]
      )
    );
  }
}
