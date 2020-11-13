import 'package:flutter/material.dart';

import 'PDFView.dart';
import 'Maindata.dart';

class Economics extends StatefulWidget {
  @override
  _EconomicsState createState() => _EconomicsState();
}

class _EconomicsState extends State<Economics> {
  List<Maindata> chapters = [
    Maindata(
        chname: "National Income and Related Aggregates",
        churl: "https://bit.ly/366iUPo",
        chno: "1"),
    Maindata(
        chname: "Money and Banking ",
        churl: "https://bit.ly/2RVdmPq",
        chno: "2"),
    Maindata(
        chname: "Determination of Income and Employment ",
        churl: "https://bit.ly/300f6eI",
        chno: "3"),
    Maindata(
        chname: "Government Budget and the Economy",
        churl: "https://bit.ly/3kMahhg",
        chno: "4"),
    Maindata(
        chname: "Balance of Payments ",
        churl: "https://bit.ly/3ctd38c",
        chno: "5"),
    Maindata(
        chname: "Indian Economy At The Time Of Independence",
        churl: "https://bit.ly/362lWnP",
        chno: "6"),
    Maindata(
        chname: "Development Experience Of India",
        churl: "https://bit.ly/3iZ2Nql",
        chno: "7"),
    Maindata(
        chname: "Development Policies & Experience",
        churl: "https://bit.ly/2ZZf6vB",
        chno: "8"),
    Maindata(
        chname: "Economic Reforms Since 1991",
        churl: "https://bit.ly/32W9Hao",
        chno: "9"),
    Maindata(
        chname: "Employment", churl: "https://bit.ly/2EsiiIr", chno: "10"),
    Maindata(
        chname: "Environment & Sustainable Economic Development",
        churl: "https://bit.ly/3hYhV6m",
        chno: "11"),
    Maindata(
        chname: "Human Capital Formation",
        churl: "https://bit.ly/3csee7C",
        chno: "12"),
    Maindata(
        chname: "Inflation", churl: "https://bit.ly/3kNkEkT", chno: "13"),
    Maindata(
        chname: "Infrastructure",
        churl: "https://bit.ly/2RR0HNu",
        chno: "14"),
    Maindata(
        chname: "Poverty", churl: "https://bit.ly/3mNtRLL", chno: "15"),
    Maindata(
        chname: "Rural Development",
        churl: "https://bit.ly/32YmmtC",
        chno: "16"),
  ];

  TextStyle customtext = TextStyle(
    fontSize: 17.0,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(25.0),
        )),
        backgroundColor: Color(0xff353b48),
        title: Text("Economics"),
      ),
      body: ListView(
        children: [
          Wrap(
            children: chapters
                .map(
                  (chapters) => Card(
                    color: Color.fromRGBO(84, 160, 255, 0.2),
                    margin: EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Text(
                        '${chapters.chname}',
                        style: customtext,
                      ),
                      leading: CircleAvatar(
                        backgroundColor: Colors.blue[400],
                        foregroundColor: Colors.white,
                        child: Text(
                          '${chapters.chno}',
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ),
                      contentPadding: EdgeInsets.all(13.0),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PDFView(
                              urls: '${chapters.churl}',
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
