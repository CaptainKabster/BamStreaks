import 'package:bam_streajs/widgets.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final nameController = TextEditingController();
  final streakController = TextEditingController();
  var streakbar = StreakBar();
  bool pressed = false;


  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    nameController.dispose();
    streakController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Column(
            children: <Widget>[
              TextField(
                controller: nameController,
                decoration: InputDecoration(

                  hintText: "Name",
                ),
              ),
              TextField(
                controller: streakController,
                decoration: InputDecoration(
                  hintText: "Streak",
                ),

              ),
              RaisedButton(
                child: Text("Save"),
                onPressed: () {
                  streakbar.name = nameController.text;
                  streakbar.streak = double.tryParse(streakController.text);
                  print(streakbar.streak); //debug welp, streakbar.streak was set to TextField value
                  setState(() {
                    pressed = true;

                  });
                },
              ),
              pressed ? StreakBar(): SizedBox(),
            ],
          ),
        ),
      ),
    );
  }

}

