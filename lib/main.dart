import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Gesture",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Text("Gesture Example",
          style: TextStyle(
            color: Colors.pink,
          ),
        ),
        backgroundColor: Colors.yellow,
        centerTitle: true,
      ),
        body: Center(
            child: GestureDetector(
              onTap: (){
                print("Box Clicked");
              },
              child:  Container(
                height: 60.0,
                width: 120.0,
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: Text("Click Me"),
            ),

            ),
        )
    );
  }
}
