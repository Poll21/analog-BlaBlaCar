import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _counter = true;
  Color _backColorY = Colors.black;
  Color _backColorN = Colors.green;

  void _incrementCounter() {
    setState(() {

      if(_counter == false) {
        _counter = true;
        _backColorY = Colors.black;
        _backColorN = Colors.green;
      }else{
        _counter = false;
        _backColorY = Colors.green;
        _backColorN = Colors.black;

      }
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
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            FloatingActionButton(
              backgroundColor: _backColorY,
              onPressed: _incrementCounter,
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              backgroundColor: _backColorN,
              onPressed: _incrementCounter,
              tooltip: 'Increment',
              child: const Icon(Icons.text_decrease),
            ),
          ],
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
