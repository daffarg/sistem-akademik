import 'package:flutter/material.dart';
import 'package:sistem_akademik/main_screen.dart';
import 'package:sistem_akademik/model/student_data.dart';

class ProfileScreen extends StatelessWidget {

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
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                    child: Text(
                      'Profil Mahasiswa',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'NotoSansKR',
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey.shade900,
                      ),
                    ),
                  ),
                  Center(
                    child: Image.asset('images/pasfoto-2-color.jpg', width: 150.0, height: 200.0)
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                    margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white.withOpacity(0.1),
                      ),
                    child:
                        Flex(
                          direction: Axis.horizontal,
                          children: [
                            Flexible(
                              child: Table(
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
                            ),
                          ]
                        )
                  )
                    ]
                  )
          )
        ]
            )
          );
  }
}
