import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sistem_akademik/graduation_screen.dart';
import 'package:sistem_akademik/model/news.dart';
import 'package:sistem_akademik/model/student_data.dart';
import 'package:sistem_akademik/profile_screen.dart';
import 'package:sistem_akademik/finance_screen.dart';
import 'package:sistem_akademik/schedule_screen.dart';
import 'package:sistem_akademik/study_plan_screen.dart';
import 'package:sistem_akademik/task_screen.dart';

class BackgroundImage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/background.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class MainScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundImage(),
          SafeArea(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 50.0),
                  Text(
                    'Selamat Datang, ${studentData.name}!',
                    style: TextStyle(
                      fontFamily: 'NotoSansKR',
                      fontSize: 20.0,
                      fontWeight: FontWeight.w800,
                      color: Colors.indigo.shade900,
                    ),
                  ),
                  SizedBox(height: 30.0),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white.withOpacity(0.1),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            Column(
                              children: [
                                IconButton(
                                  padding: EdgeInsets.all(0),
                                  icon: Icon(
                                    Icons.account_circle,
                                    size: 40.0,
                                    color: Colors.blue,
                                  ),
                                  onPressed: () {
                                    Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                        return ProfileScreen();
                                      }));
                                  },
                                ),
                                Text(
                                  'Profil',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 13.0,
                                    color: Colors.grey.shade800,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                IconButton(
                                  padding: EdgeInsets.all(0),
                                  icon : Icon(
                                    Icons.task_outlined,
                                    size: 40.0,
                                    color: Colors.orange.shade300,
                                  ),
                                  onPressed: () {
                                    Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                      return TaskScreen();
                                    }));
                                  }
                                ),
                                Text(
                                  'Tugas',
                                  style: TextStyle(
                                    fontSize: 13.0,
                                    color: Colors.grey.shade800,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                IconButton(
                                  padding: EdgeInsets.all(0),
                                  icon: Icon(
                                    Icons.monetization_on,
                                    size: 40.0,
                                    color: Colors.green,
                                  ),
                                  onPressed: () {
                                    Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                        return FinanceScreen();
                                      }));
                                  }
                                ),
                                Text(
                                  'Keuangan',
                                  style: TextStyle(
                                    fontSize: 13.0,
                                    color: Colors.grey.shade800,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                IconButton(
                                  padding: EdgeInsets.all(0),
                                  icon: Icon(
                                    Icons.web_outlined,
                                    size: 40.0,
                                    color: Colors.orange.shade600,
                                  ),
                                  onPressed: () {
                                    Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                      return StudyPlanScreen();
                                    }));
                                  },
                                ),
                                Text(
                                  'Rencana Studi',
                                  style: TextStyle(
                                    fontSize: 13.0,
                                    color: Colors.grey.shade800,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                IconButton(
                                  padding: EdgeInsets.all(0),
                                  icon: Icon(
                                    Icons.date_range_outlined,
                                    size: 40.0,
                                    color: Colors.redAccent.shade400,
                                  ),
                                  onPressed: () {
                                    Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                        return ScheduleScreen();
                                      }));
                                  },
                                ),
                                Text(
                                  'Jadwal',
                                  style: TextStyle(
                                    fontSize: 13.0,
                                    color: Colors.grey.shade800,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                IconButton(
                                  padding: EdgeInsets.all(0),
                                  icon: Icon(
                                    Icons.school,
                                    size: 40.0,
                                    color: Colors.blue.shade900,
                                  ),
                                  onPressed: () {
                                    Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                        return GraduationScreen();
                                      }));
                                  }
                                ),
                                Text(
                                  'Wisuda',
                                  style: TextStyle(
                                    fontSize: 13.0,
                                    color: Colors.grey.shade800,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                      height: 15.0
                  ),
                  Text('Berita',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17.0,
                      color: Colors.indigo.shade900,
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 5),
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
                              children: [
                                Text(
                                  newsList[index].title,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  height: 4.0,
                                ),
                                Text(
                                  newsList[index].date,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 11.0,
                                      fontWeight: FontWeight.w300
                                  ),
                                ),
                                SizedBox(
                                  height: 4.0,
                                ),
                                Text(
                                  newsList[index].description,
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(fontSize: 13.0),
                                ),
                                SizedBox(
                                  height: 4.0,
                                ),
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return Divider();
                        },
                        itemCount: newsList.length,
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
