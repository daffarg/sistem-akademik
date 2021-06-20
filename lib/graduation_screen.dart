import 'package:flutter/material.dart';
import 'package:sistem_akademik/main_screen.dart';

class GraduationScreen extends StatelessWidget {

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
                    'Wisuda',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
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
                    child: Flex(
                        direction: Axis.horizontal,
                        children: [
                          Flexible(
                            child: Text(
                              'Anda belum terdaftar sebagai peserta wisuda',
                              )
                            )
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
