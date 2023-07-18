import 'package:flutter/material.dart';

class NotDefteriApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF26AB23),
        scaffoldBackgroundColor: Colors.white,
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String input = "";
  List<String> todo = [];

  @override
  void initState() {
    todo.add("Geri Dönüşüm");
    todo.add("Çevre Bilinci");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            "Sürdürülebilir Yaşam Not Defteri",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontStyle: FontStyle.italic,
              letterSpacing: 4.5,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          child: Icon(
            Icons.add,
            color: Colors.green[500],
            size: 40,
          ),
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  backgroundColor: Colors.grey,
                  title: Text("Not Ekle"),
                  content: TextField(
                    decoration: InputDecoration(hintText: "Ekle"),
                    onChanged: (String value) {
                      setState(() {
                        input = value;
                      });
                    },
                  ),
                  actions: [
                    FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          todo.add(input);
                        });
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "Ekle",
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ],
                );
              },
            );
          },
        ),
        body: Padding(
          padding: EdgeInsets.all(5),
          child: ListView.builder(
            itemCount: todo.length,
            itemBuilder: (BuildContext context, int index) {
              return Dismissible(
                key: Key(todo[index]),
                child: Card(
                  elevation: 4,
                  margin: EdgeInsets.all(8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ListTile(
                    title: Text(
                      todo[index],
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    trailing: IconButton(
                      icon: Icon(
                        Icons.delete_forever_rounded,
                        color: Colors.green,
                      ),
                      onPressed: () {
                        setState(() {
                          todo.removeAt(index);
                        });
                      },
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}