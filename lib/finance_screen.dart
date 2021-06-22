import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sistem_akademik/main_screen.dart';
import 'package:sistem_akademik/model/student_data.dart';
import 'package:sistem_akademik/model/finance_data.dart';

class FinanceScreen extends StatefulWidget {

  @override
  _FinanceScreenState createState() => _FinanceScreenState();
}

class _FinanceScreenState extends State<FinanceScreen> {

  String selectedSemester = 'Semester 1';

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
                      'Keuangan',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'NotoSansKR',
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      )
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 7.0),
                    margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 7.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white.withOpacity(0.1),
                    ),
                    child: DropdownButton(
                      dropdownColor: Colors.white.withOpacity(0.9),
                      isExpanded: true,
                      value: selectedSemester,
                      icon: const Icon(Icons.arrow_downward),
                      iconSize: 24,
                      elevation: 16,
                      style: TextStyle(color: Colors.grey.shade800),
                      underline: Container(
                        height: 2,
                        color: Colors.indigo.shade100,
                      ),
                      onChanged : (String? newValue) {
                        setState(() {
                          selectedSemester = newValue!;
                        });
                      },
                      items: List.generate(studentData.currentSemester, (int index) => 'Semester ${index+1}')
                        .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                      }).toList(),
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
                          child: Table(
                            border: TableBorder(horizontalInside: BorderSide(color: Colors.black, width: 0.05)),
                            children: [
                              TableRow(
                                children: [
                                  Text(
                                    'Tagihan',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                    )
                                  ),
                                  Text(financeList[int.parse(selectedSemester.substring(selectedSemester.length-1))-1].billing),
                                ],
                              ),
                              TableRow(
                                children: [
                                  Text(
                                    'Status',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(financeList[int.parse(selectedSemester.substring(selectedSemester.length-1))-1].paid),
                                ]
                              ),
                              TableRow(
                                children: [
                                  Text(
                                    'Cicilan',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                    )
                                  ),
                                  Text(financeList[int.parse(selectedSemester.substring(selectedSemester.length-1))-1].installment),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ]
              )
            )
          ]
        )
    );
  }
}
