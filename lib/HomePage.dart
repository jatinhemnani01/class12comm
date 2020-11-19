import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      body: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextStyle customstyle = TextStyle(
    fontSize: 20.0,
    letterSpacing: 3.0,
    fontWeight: FontWeight.w400,
  );

  RoundedRectangleBorder borders = RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(23.0),
    ),
  );

  BoxDecoration gradient = BoxDecoration(
    borderRadius: BorderRadius.circular(20.0),
    gradient: LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [
        Color(0xffff7f50),
        Color(0xffffaf40),
      ],
    ),
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
        centerTitle: true,
        title: Text("Home"),
      ),
      body: Stack(
        children: [
          Container(
            child: GridView.count(
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.all(10.0),
              mainAxisSpacing: 20.0,
              crossAxisSpacing: 10.0,
              crossAxisCount: 2,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/eco');
                  },
                  child: Container(
                    decoration: gradient,
                    child: Card(
                      shape: borders,
                      child: Container(
                        decoration: gradient,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: Icon(
                                Octicons.graph,
                                color: Colors.deepPurpleAccent[200],
                                size: 50,
                              ),
                            ),
                            Container(
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    'Economics',
                                    style: customstyle,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/accounts');
                  },
                  child: Container(
                    decoration: gradient,
                    child: Card(
                      shape: borders,
                      child: Container(
                        decoration: gradient,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: Icon(
                                FontAwesome.percent,
                                color: Colors.deepPurpleAccent[200],
                                size: 50,
                              ),
                            ),
                            Container(
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    'Accounts',
                                    style: customstyle,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/bst');
                  },
                  child: Container(
                    decoration: gradient,
                    child: Card(
                      shape: borders,
                      child: Container(
                        decoration: gradient,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: Icon(
                                Foundation.torso_business,
                                color: Colors.deepPurpleAccent[200],
                                size: 50,
                              ),
                            ),
                            Container(
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    'BST',
                                    style: customstyle,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/english');
                  },
                  child: Container(
                    decoration: gradient,
                    child: Card(
                      shape: borders,
                      child: Container(
                        decoration: gradient,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: Icon(
                                MaterialCommunityIcons.alphabetical,
                                color: Colors.deepPurpleAccent[200],
                                size: 52,
                              ),
                            ),
                            Container(
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    'English',
                                    style: customstyle,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
