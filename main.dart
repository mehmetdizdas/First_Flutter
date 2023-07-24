
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kaset',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow.shade100),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
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
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        color: CupertinoColors.systemGrey,
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                child: Image.asset('assets/constantinoplesplash.png'),
              ),
            ),
            Container(
              color: Colors.black38,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'You have pushed the button this many times:',
                    ),
                    Text(
                      '$_counter',
                      style: Theme
                          .of(context)
                          .textTheme
                          .headlineMedium,
                    ),
                    const ButtonBar(
                      buttonHeight: 100,
                    ),
                    // Navigator.of(context).push(route)
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) {
                            return newpage();
                          }),
                        );
                      },
                      child: const Text("Yeni sayfaya git"),
                    ),
                    Image.asset('assets/07-maps-blog-rome.webp'),
                  ],
                ),

              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class newpage extends StatelessWidget {
  const newpage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CupertinoColors.systemGrey,
      ),
      body: Container(
        color: Colors.black26,
        child: ListView(
          children: [
            Container(
              color: CupertinoColors.systemFill,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  color: CupertinoColors.systemGrey,
                  child: Row(
                    children: [
                      Container(
                        color: Colors.yellow.shade100,
                        child: const SizedBox(
                          width: 200,
                          height: 100,
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Row(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child:
                                  Icon(Icons.icecream, size: 100, color: CupertinoColors.opaqueSeparator,),

                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: const Text(
                            "Merhaba"
                        ),
                      ),
                      Container(
                        color: Colors.yellow.shade100,
                        child: const SizedBox(
                          width: 200,
                          height: 100,
                          child: Center(
                            child: Row(
                              children: [
                                Align(
                                  alignment: Alignment.centerRight,
                                  child:
                                  Icon(Icons.icecream, size: 100,  color: CupertinoColors.opaqueSeparator,),

                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Column(
              children: [
                Container(
                  color: Colors.blueGrey.shade200,
                  child: Wrap(
                    spacing: 32,
                    runSpacing: 16,
                    children: [
                      Container(width: 100, height: 100, color: Colors.red, child: Center(child: Icon(Icons.content_cut_sharp),),),
                      Container(width: 100, height: 100, color: Colors.grey,child: Center(child: Icon(Icons.offline_bolt_sharp),)),
                      Container(width: 100, height: 100, color: Colors.blueGrey,child: Center(child: Icon(Icons.upload_sharp),)),
                      Container(width: 100, height: 100, color: Colors.orange,child: Center(child: Icon(Icons.table_view_sharp),)),
                      Container(width: 100, height: 100, color: Colors.deepPurple,child: Center(child: Icon(Icons.back_hand),)),
                      Container(width: 100, height: 100, color: Colors.deepPurpleAccent,child: Center(child: Icon(Icons.access_alarm),)),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return dinamik();
                  },
                )
                );
              },
              child: const Text(
                  "fulle"
              ),
            ),
            Image.asset('assets/08-maps-blog-rome.jpg'),
          ],

        ),
      ),
    );
  }
}

class dinamik extends StatefulWidget {
  @override
  State<dinamik> createState() => _dinamikState();
}

class _dinamikState extends State<dinamik> {
  double sliderValue = 100.0;

  void _updateSliderValue(double newValue) {
    setState(() {
      sliderValue = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Center(
            child: Expanded(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                    "data"
                ),
              ),
            ),

          ),
          Container(
            color: Colors.greenAccent,
            height: 250,
            child: Column(
              children: [
                Text(
                  'Romadaki Günlük harcamanız: ${sliderValue.toStringAsFixed(2)}',
                  style: TextStyle(fontSize: 20),
                ),
                Slider(
                  value: sliderValue,
                  onChanged: _updateSliderValue,
                  min: 0,
                  max: 200,
                  divisions: 20,
                  label: sliderValue.toString(),
                ),
                RichText(text: const TextSpan(text: 'Hesaplamalar Euro birimiyle yapılır.', style: TextStyle(fontWeight: FontWeight.bold))),
                Icon(Icons.euro, size: 100,)
              ],
            )
          ),
          Image.asset('assets/10-maps-blog-rome.jpg')

        ],
      ),

    );
  }
}
