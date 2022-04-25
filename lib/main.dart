import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double result = 0.0;
  TextEditingController numaEditingController = TextEditingController();
  TextEditingController numbEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Hello World',
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Simple Calculator ",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10.0),
                TextField(
                  controller: numaEditingController,
                  decoration: InputDecoration(
                      hintText: "First Number",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                  keyboardType: const TextInputType.numberWithOptions(),
                ),
                const SizedBox(height: 10.0),
                TextField(
                  controller: numbEditingController,
                  decoration: InputDecoration(
                      hintText: "Second Number",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                  keyboardType: const TextInputType.numberWithOptions(),
                ),
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () => _pressME("+"),
                      child: const Text("+"),
                    ),
                    ElevatedButton(
                      onPressed: () => _pressME("-"),
                      child: const Text("-"),
                    ),
                    ElevatedButton(
                      onPressed: () => _pressME("x"),
                      child: const Text("x"),
                    ),
                    ElevatedButton(
                      onPressed: () => _pressME("/"),
                      child: const Text("/"),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0),
                Text("Result: "+
                  result.toStringAsFixed(2),
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _pressME(String s) {
    setState(() {
      double numa = double.parse(numaEditingController.text);
      double numb = double.parse(numbEditingController.text);
      switch (s) {
        case "+":
          result = numa + numb;
          break;
        case "-":
          result = numa - numb;
          break;
        case "x":
          result = numa * numb;
          break;
        case "/":
          result = numa / numb;
          break;
      }
    });
  }
}
