//Gizem Derici

import 'package:ecomate/bilgi/models/documents_model.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ReaderScreen extends StatefulWidget {
  ReaderScreen(this.doc, {Key? key}) : super(key: key);
  Document doc;
  @override
  State<ReaderScreen> createState() => _ReaderScreen();
}

class _ReaderScreen extends State<ReaderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(widget.doc.doc_title!),
        ),
        body: Container(
          child: SfPdfViewer.network(widget.doc.doc_url!),
        ));
  }
}
