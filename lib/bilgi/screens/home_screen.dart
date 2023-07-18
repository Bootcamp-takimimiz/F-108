//Gizem Derici

import 'package:ecomate/bilgi/screens/reader_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/documents_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Bilgi Köşesi"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
          padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "PDFler",
                  style: GoogleFonts.roboto(
                      fontSize: 28, fontWeight: FontWeight.bold),
                ),
                Column(
                    children: Document.doc_list
                        .map((doc) => ListTile(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ReaderScreen(doc)));
                              },
                              title: Text(
                                doc.doc_title!,
                                style: GoogleFonts.nunito(),
                                overflow: TextOverflow.ellipsis,
                              ),
                              subtitle: Text("${doc.page_num!}Pages"),
                              trailing: Text(
                                doc.doc_date!,
                                style: GoogleFonts.nunito(color: Colors.grey),
                              ),
                              leading: Icon(
                                Icons.picture_as_pdf,
                                color: Colors.red,
                                size: 32.0,
                              ),
                            ))
                        .toList()),
              ],
            ),
          )),
    );
  }
}
