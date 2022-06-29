import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String name = "Hi, This is Taimoor";
  int index=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text(name)),
          actions: [
            IconButton(
              icon: Icon(Icons.arrow_back_ios_new),
              onPressed: () {
                setState(() {
                  if (name == "Welcome To My flutter App ")
                    name = "Hi, This is Taimoor";
                  else
                    name = "Welcome To My flutter App ";
                });
              },
            ),
          ],
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 300,
                  width: 500,
                  color: Colors.lightGreen,
                  child: const Text('this is tamoor'),
                ),
                Container(
                  height: 300,
                  width: 500,
                  color: Colors.red,
                ),
                Container(
                  height: 300,
                  width: 500,
                  color: Colors.blueAccent,
                ),
              ],
            ),
          ),
        ),
        //bottomNavigationBar
        bottomNavigationBar: BottomNavigationBar(
          //backgroundColor: Colors.white,
          items: const [
            BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                label: "Catogrey", icon: Icon(Icons.category_sharp)),
            BottomNavigationBarItem(label: "Search", icon: Icon(Icons.search)),
          ],
          currentIndex: index,
          onTap: (int i){
            setState(() {
              index=i;
            });
          },
        ),
      ),
    );
  }
}
