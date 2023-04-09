import 'package:flutter/material.dart';
import 'Orientation.dart';

void main() {
  runApp(MyApp());
}

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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
            title: Text(widget.title),
      ),
      body: Center(
    
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Padding(padding: EdgeInsets.only(top:10),),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,  
            children: [
            TextButton(child: Text('Lock Portrait ⏫️'),onPressed: () => orientationLockPortrait(), ),
            TextButton(child: Text('Lock LandScape ⏩️'),onPressed: () => orientationLockLandscape(), ),
            TextButton(child: Text('Unlock 🔃'),onPressed: () => orientationUnlock(), ),
            ],)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
