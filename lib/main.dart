import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vanilla',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _rating = 0;

  @override
  Widget build(BuildContext context) {
    double _size = 50;
    return Scaffold(
      appBar: AppBar(
        title: Text('Vanilla'),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: IconButton(
                icon: (_rating >= 1)
                    ? Icon(Icons.star, size: _size)
                    : Icon(
                        Icons.star_border,
                        size: _size,
                      ),
                color: Colors.indigo[500],
                onPressed: () {
                  setState(
                    () {
                      _rating = 1;
                    },
                  );
                },
              ),
            ),
            Container(
              child: IconButton(
                icon: (_rating >= 2)
                    ? Icon(Icons.star, size: _size)
                    : Icon(
                        Icons.star_border,
                        size: _size,
                      ),
                color: Colors.indigo[500],
                  onPressed: () {
                    setState(
                          () {
                        _rating = 2;
                      },
                    );
                  },
              ),
            ),
            Container(
              child: IconButton(
                icon: (_rating >= 3)
                    ? Icon(Icons.star, size: _size)
                    : Icon(
                        Icons.star_border,
                        size: _size,
                      ),
                color: Colors.indigo[500],
                onPressed: () {
                  setState(
                        () {
                      _rating = 3;
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
