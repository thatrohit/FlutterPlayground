import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;
  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var snackBar = const SnackBar(content: Text('This is my snackbar'));
    return MaterialApp(
      title: 'My Home',
      home: Builder(builder: (ctx) {
        return Scaffold(
          bottomNavigationBar: BottomAppBar(
              color: Colors.limeAccent,
              shape: const CircularNotchedRectangle(),
              child: Container(
                padding: const EdgeInsets.fromLTRB(12, 12, 12, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        child: Icon(Icons.sports_baseball),
                        padding: EdgeInsets.fromLTRB(0, 0, 6, 0)),
                    Container(
                        child: Icon(Icons.sports_football),
                        padding: EdgeInsets.fromLTRB(0, 0, 6, 0)),
                    Container(
                        child: Icon(Icons.sports_cricket),
                        padding: EdgeInsets.fromLTRB(0, 0, 6, 0)),
                  ],
                ),
              )),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              ScaffoldMessenger.of(ctx).showSnackBar(snackBar);
              incrementCounter();
            },
          ),
          appBar: AppBar(
            title: const Center(child: Text("Scaffold Demo")),
            actions: [
              GestureDetector(
                  child: const Icon(Icons.cancel),
                  onTap: () {
                    print("cancel clicked");
                  })
            ],
            leading: GestureDetector(
                child: const Icon(Icons.menu),
                onTap: () {
                  print("menu clicked");
                }),
          ),
          body: Stack(children: [
            Column(
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.all(12),
                  child: Text('App Bar Bottom'),
                  color: Colors.limeAccent,
                )
              ],
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
            ),
            Align(
              child: Text("Button Pressed $counter times"),
              alignment: Alignment.center,
            ),
          ]),
        );
      }),
    );
  }
}
