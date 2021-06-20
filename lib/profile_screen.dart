import 'package:flutter/material.dart';
import 'package:sistem_akademik/main_screen.dart';

class ProfileScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
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
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
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
                        color: Colors.cyan.shade50.withOpacity(0.5),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.cyan.shade200.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                    child:
                        Flex(
                          direction: Axis.horizontal,
                          children: [
                            Flexible(
                              child: Table(
                                border: TableBorder(horizontalInside: BorderSide(color: Colors.black, width: 0.1)),
                                children: [
                                  TableRow(
                                      children: [
                                        Text('Nama'),
                                        Text('Mohamad Daffa Argakoesoemah'),
                                      ]
                                  ),
                                  TableRow(
                                      children: [
                                        Text('Fakultas'),
                                        Text('STEI'),
                                      ]
                                  ),
                                  TableRow(
                                      children: [
                                        Text('Program Studi'),
                                        Text('Teknik Informatika'),
                                      ]
                                  ),
                                  TableRow(
                                      children: [
                                        Text('Kelas'),
                                        Text('Reguler'),
                                      ]
                                  ),
                                  TableRow(
                                      children: [
                                        Text('IPK'),
                                        Text('4.0'),
                                      ]
                                  ),
                                  TableRow(
                                      children: [
                                        Text('SKS'),
                                        Text('Lulus 36 SKS'),
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
