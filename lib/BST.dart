import 'package:flutter/material.dart';

import 'PDFView.dart';
import 'Maindata.dart';

class BST extends StatefulWidget {
  @override
  _BSTState createState() => _BSTState();
}

class _BSTState extends State<BST> {
  List<Maindata> chapters = [
    Maindata(
        chname: "Nature Significance of Management",
        churl: "https://bit.ly/2ROFjIF",
        chno: "1"),
    Maindata(
        chname: "Principles of Management",
        churl: "https://bit.ly/3iU9ASi",
        chno: "2"),
    Maindata(
        chname: "Business Management",
        churl: "https://bit.ly/3iZF9KB",
        chno: "3"),
    Maindata(
        chname: "Planning", churl: "https://bit.ly/361e8CH", chno: "4"),
    Maindata(
        chname: "Organising", churl: "https://bit.ly/33Ty486", chno: "5"),
    Maindata(
        chname: "Staffing", churl: "https://bit.ly/3crlH6R", chno: "6"),
    Maindata(
        chname: "Directing", churl: "https://bit.ly/3kJ6Pnj", chno: "7"),
    Maindata(
        chname: "Controlling", churl: "https://bit.ly/2EudK4v", chno: "8"),
    Maindata(
        chname: "Financial Management",
        churl: "https://bit.ly/3068xr1",
        chno: "9"),
    Maindata(
        chname: "Financial Market",
        churl: "https://bit.ly/361qL0y",
        chno: "10"),
    Maindata(
        chname: "Marketing Management",
        churl: "https://bit.ly/2Ez40pG",
        chno: "11"),
    Maindata(
        chname: "Consumer Protection",
        churl: "https://bit.ly/3mQq5kD",
        chno: "12"),
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
        title: Text("BST"),
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
