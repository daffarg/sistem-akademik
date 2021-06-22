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
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.blueGrey.shade900,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
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
                      fontFamily: 'NotoSansKR',
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
                      color: Colors.white.withOpacity(0.1),
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
