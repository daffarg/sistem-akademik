import 'package:flutter/material.dart';
import 'package:sistem_akademik/main_screen.dart';
import 'package:sistem_akademik/model/tasks.dart';

class TaskScreen extends StatelessWidget {

  @override
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
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                    child: Text(
                      'Tugas',
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
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white.withOpacity(0.1),
                        gradient: LinearGradient(
                          begin: FractionalOffset.topCenter,
                          end: FractionalOffset.bottomCenter,
                          colors: [
                            Colors.black.withOpacity(0), Colors.black,
                          ],
                          stops: [
                            0.8,
                            1.0,
                          ],
                        ),
                      ),
                      child: ListView.separated(
                        scrollDirection: Axis.vertical,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${tasksList[index].courseCode} - ${tasksList[index].courseName}',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  height: 4.0,
                                ),
                                Text(
                                  tasksList[index].taskTitle,
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  height: 4.0,
                                ),
                                Text(
                                  tasksList[index].deadline,
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w300
                                  )
                                ),
                                SizedBox(
                                  height: 4.0,
                                ),
                                Text(
                                  tasksList[index].taskDetails,
                                  style: TextStyle(
                                    fontSize: 14.0,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return Divider();
                        },
                        itemCount: tasksList.length,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
