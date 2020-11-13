import 'package:flutter/material.dart';

import 'PDFView.dart';
import 'Maindata.dart';

class English extends StatefulWidget {
  @override
  _EnglishState createState() => _EnglishState();
}

class _EnglishState extends State<English> {
  List<Maindata> chapters = [
    Maindata(
        chname: "The Last Lesson",
        churl: "https://bit.ly/2G8BjjS",
        chno: "1"),
    Maindata(
        chname: "Lost Spring", churl: "https://bit.ly/2G2yd0A", chno: "2"),
    Maindata(
        chname: "Deep Water", churl: "https://bit.ly/3i0dOGT", chno: "3"),
    Maindata(
        chname: "The Rattrap", churl: "https://bit.ly/2ExwT5A", chno: "4"),
    Maindata(chname: "Indigo", churl: "https://bit.ly/33T8BeV", chno: "5"),
    Maindata(
        chname: "Going Places",
        churl: "https://bit.ly/32VUSVe",
        chno: "6"),
    Maindata(
        chname: "My Mother at Sixty – Six ",
        churl: "https://bit.ly/2S0JfWJ",
        chno: "7"),
    Maindata(
        chname: "An Elementary School Classroom in a Slum",
        churl: "https://bit.ly/33PX7ZA",
        chno: "8"),
    Maindata(
        chname: "Keeping Quiet",
        churl: "https://bit.ly/2RXSnve",
        chno: "9"),
    Maindata(
        chname: "A Thing of Beauty ",
        churl: "https://bit.ly/2Eskks3",
        chno: "10"),
    Maindata(
        chname: "Aunt Jennifer’s Tigers",
        churl: "https://bit.ly/33YRetj",
        chno: "11"),
    Maindata(
        chname: "The Third Level",
        churl: "https://bit.ly/303uzL4",
        chno: "12"),
    Maindata(
        chname: "The Tiger King",
        churl: "https://bit.ly/2S7xHBr",
        chno: "13"),
    Maindata(
        chname: "Journey to the end of the Earth",
        churl: "https://bit.ly/2G9SgtS",
        chno: "14"),
    Maindata(
        chname: "The Enemy Pearl",
        churl: "https://bit.ly/2HndrJD",
        chno: "15"),
    Maindata(
        chname: "Should Wizard hit Mommy",
        churl: "https://bit.ly/3mHdUXk",
        chno: "16"),
    Maindata(
        chname: "On the face of It",
        churl: "https://bit.ly/3mQ2XTB",
        chno: "17"),
    Maindata(
        chname: "Evans tries an O-Level",
        churl: "https://bit.ly/363bPze",
        chno: "18"),
    Maindata(
        chname: "Memories of Childhood",
        churl: "https://bit.ly/363c65e",
        chno: "19"),
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
        title: Text("English"),
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
