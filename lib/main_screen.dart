import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sistem_akademik/news.dart';

var username = 'Mohamad Daffa Argakoesoemah';

class BackgroundImage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/background.png'),
          fit: BoxFit.cover,
        )
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
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/background.png'),
                fit: BoxFit.cover,
              ),
            ),
          ), SingleChildScrollView(
            child: SafeArea(
              child:
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                  child: Column(
                      children: <Widget>[
                        SizedBox(height: 50.0),
                        Text(
                          'Selamat Datang, $username!',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 30.0),
                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
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
                            child: Column(
                                children: [
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Column(
                                          children: [
                                            Icon(
                                              Icons.account_circle,
                                              size: 40.0,
                                              color: Colors.blue,
                                            ),
                                            SizedBox(height: 8.0),
                                            Text(
                                                'Profil',
                                                style: TextStyle(
                                                  fontSize: 13.0,
                                                  color: Colors.grey.shade800,
                                                )
                                            )
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Icon(
                                              Icons.monetization_on,
                                              size: 40.0,
                                              color: Colors.green,
                                            ),
                                            SizedBox(height: 8.0),
                                            Text(
                                                'Keuangan',
                                                style: TextStyle(
                                                  fontSize: 13.0,
                                                  color: Colors.grey.shade800,
                                                )
                                            )
                                          ],
                                        ),
                                        Column(
                                            children: [
                                              Icon(
                                                Icons.menu_book,
                                                size: 40.0,
                                                color: Colors.orange.shade300,
                                              ),
                                              SizedBox(height: 8.0),
                                              Text(
                                                  'Kurikulum',
                                                  style: TextStyle(
                                                    fontSize: 13.0,
                                                    color: Colors.grey.shade800,
                                                  )
                                              )
                                            ]
                                        ),
                                        Column(
                                            children: [
                                              Icon(
                                                Icons.date_range_outlined,
                                                size: 40.0,
                                                color: Colors.redAccent.shade400,
                                              ),
                                              SizedBox(height: 8.0),
                                              Text(
                                                  'Jadwal',
                                                  style: TextStyle(
                                                    fontSize: 13.0,
                                                    color: Colors.grey.shade800,
                                                  )
                                              )
                                            ]
                                        )
                                      ]
                                  ),
                                  SizedBox(height: 8.0),
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Column(
                                            children: [
                                              Icon(
                                                Icons.school,
                                                size: 40.0,
                                                color: Colors.blue.shade900,
                                              ),
                                              SizedBox(height: 8.0),
                                              Text(
                                                  'Wisuda',
                                                  style: TextStyle(
                                                    fontSize: 13.0,
                                                    color: Colors.grey.shade800,
                                                  )
                                              )
                                            ]
                                        ),
                                        Column(
                                            children: [
                                              Icon(
                                                Icons.web_outlined,
                                                size: 40.0,
                                                color: Colors.orange.shade600,
                                              ),
                                              SizedBox(height: 8.0),
                                              Text(
                                                  'Rencana Studi',
                                                  style: TextStyle(
                                                    fontSize: 13.0,
                                                    color: Colors.grey.shade800,
                                                  )
                                              )
                                            ]
                                        ),
                                        Column(
                                            children: [
                                              Icon(
                                                Icons.settings,
                                                size: 40.0,
                                                color: Colors.blueGrey.shade700,
                                              ),
                                              SizedBox(height: 8.0),
                                              Text(
                                                  'Pengaturan',
                                                  style: TextStyle(
                                                    fontSize: 13.0,
                                                    color: Colors.grey.shade800,
                                                  )
                                              )
                                            ]
                                        )
                                      ]
                                  )
                                ]
                            )
                        ),
                        SizedBox(
                            height: 15.0
                        ),
                        Text('Berita', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),),
                        SizedBox(
                          height: 15.0,
                        ),
                        Container(
                          padding: EdgeInsets.all(10.0),
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
                            child: ListView.separated(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemBuilder: (BuildContext context, int index) {
                                return Expanded(
                                    child: ClipRRect(
                                        child: Column(
                                            children: [
                                              Text(
                                                newsList[index].title,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontSize: 15.0,
                                                  fontWeight: FontWeight.w500,
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
                                                )
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
                                            ]
                                        )
                                    )
                                );
                              },
                              separatorBuilder: (BuildContext context, int index) {
                                return Divider();
                              },
                              itemCount: newsList.length,
                            )
                        )
                      ]
                  )
              ),
            )
          )
        ]
      ),
    );
  }
}
