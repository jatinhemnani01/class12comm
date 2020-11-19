import 'package:flutter/material.dart';
import 'package:pdf_flutter/pdf_flutter.dart';

import 'Ads.dart';

class PDFView extends StatefulWidget {
  PDFView({this.urls});
  final String urls;

  @override
  _PDFViewState createState() => _PDFViewState();
}

class _PDFViewState extends State<PDFView> {
  @override
  void initState() {
    loadad();
    super.initState();
  }

  @override
  void dispose() {
    ded();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      // ignore: missing_return
      onWillPop: () {
        showad();
        Navigator.pop(context);
      },
      child: Scaffold(
        bottomNavigationBar: BannerJ(),
        appBar: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(25.0),
            ),
          ),
          backgroundColor: Color(0xff353b48),
          title: Text("PDF"),
        ),
        body: PDF.network(
          widget.urls,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          placeHolder: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
