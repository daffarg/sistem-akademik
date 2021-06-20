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
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      )
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(15.0),
                    child: DropdownButton(
                      isExpanded: true,
                      value: selectedSemester,
                      icon: const Icon(Icons.arrow_downward),
                      iconSize: 24,
                      elevation: 16,
                      style: TextStyle(color: Colors.grey.shade800),
                      underline: Container(
                        height: 2,
                        color: Colors.cyan,
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
                          child: Table(
                            border: TableBorder(horizontalInside: BorderSide(color: Colors.black, width: 0.1)),
                            children: [
                              TableRow(
                                children: [
                                  Text('Tagihan'),
                                  Text(financeList[int.parse(selectedSemester.substring(selectedSemester.length-1))-1].billing),
                                ],
                              ),
                              TableRow(
                                children: [
                                  Text('Status'),
                                  Text(financeList[int.parse(selectedSemester.substring(selectedSemester.length-1))-1].paid),
                                ]
                              ),
                              TableRow(
                                children: [
                                  Text('Cicilan'),
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
