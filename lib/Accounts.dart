import 'package:flutter/material.dart';

import 'PDFView.dart';
import 'Maindata.dart';

class Accounts extends StatefulWidget {
  @override
  _AccountsState createState() => _AccountsState();
}

class _AccountsState extends State<Accounts> {
  List<Maindata> chapters = [
    Maindata(
        chname: "Fundamentals Of Partnership",
        churl: "https://bit.ly/3i3kpA5",
        chno: "1"),
    Maindata(
        chname: "Goodwill", churl: "https://bit.ly/33TvuPs", chno: "2"),
    Maindata(
        chname: "Reconstitution of Partnership",
        churl: "https://bit.ly/2RQTltm",
        chno: "3"),
    Maindata(
        chname: "Admission of A Partner",
        churl: "https://bit.ly/3coLUmK",
        chno: "4"),
    Maindata(
        chname: "Retirement or Death of a Partner",
        churl: "https://bit.ly/2FV9lbr",
        chno: "5"),
    Maindata(
        chname: "Dissolution Of a Partnership Firm",
        churl: "https://bit.ly/35XY8S6",
        chno: "6"),
    Maindata(
        chname: "Accounting For Share Capital",
        churl: "https://bit.ly/3mMWYyC",
        chno: "7"),
    Maindata(
        chname: "Accounting For Debentures",
        churl: "https://bit.ly/33S0was",
        chno: "8"),
    Maindata(
        chname: "Company Accounts – Redemption of Debentures",
        churl: "https://bit.ly/361oqCO",
        chno: "9"),
    Maindata(
        chname: "Financial Statements Of A Company",
        churl: "https://bit.ly/3cpNjcw",
        chno: "10"),
    Maindata(
        chname: "Financial Statement Analysis",
        churl: "https://bit.ly/2FUudzy",
        chno: "11"),
    Maindata(
        chname: "Tools For Financial Statement Analysis",
        churl: "https://bit.ly/3cpNyUY",
        chno: "12"),
    Maindata(
        chname: "Accounting Ratios of Chapter",
        churl: "https://bit.ly/2RVdnmA",
        chno: "13"),
    Maindata(
        chname: "Cashflow Statement",
        churl: "https://bit.ly/30516Ar",
        chno: "14"),
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
        title: Text("Accounts"),
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
