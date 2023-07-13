import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
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
  var n1 = TextEditingController();
  var n2 = TextEditingController();
  var result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 250,
              child: TextField(
                controller: n1,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    hintText: "Enter n1",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12))),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 250,
              child: TextField(
                controller: n2,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    hintText: "Enter n2",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12))),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox.square(
              dimension: 250,
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: [
                  SizedBox.square(
                    dimension: 20,
                    child: ElevatedButton(
                      onPressed: () {
                        var num1 = int.parse(n1.text.toString());
                        var num2 = int.parse(n2.text.toString());
                        var opr = num1 + num2;

                        result = "$opr";
                        setState(() {});
                      },
                      child: Text(
                        "+",
                        style: TextStyle(color: Colors.white, fontSize: 50),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepPurpleAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22),
                        ),
                      ),
                    ),
                  ),
                  SizedBox.square(
                    dimension: 20,
                    child: ElevatedButton(
                      onPressed: () {
                        var num1 = int.parse(n1.text.toString());
                        var num2 = int.parse(n2.text.toString());
                        var opr = num1 - num2;

                        result = "$opr";
                        setState(() {});
                      },
                      child: Text(
                        "-",
                        style: TextStyle(color: Colors.white, fontSize: 50),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepPurpleAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22),
                        ),
                      ),
                    ),
                  ),
                  SizedBox.square(
                    dimension: 20,
                    child: ElevatedButton(
                      onPressed: () {
                        var num1 = int.parse(n1.text.toString());
                        var num2 = int.parse(n2.text.toString());
                        var opr = num1 * num2;

                        result = "$opr";
                        setState(() {});
                      },
                      child: Text(
                        "x",
                        style: TextStyle(color: Colors.white, fontSize: 50),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepPurpleAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22),
                        ),
                      ),
                    ),
                  ),
                  SizedBox.square(
                    dimension: 20,
                    child: ElevatedButton(
                      onPressed: () {
                        var num1 = int.parse(n1.text.toString());
                        var num2 = int.parse(n2.text.toString());
                        var opr = num1 / num2;

                        result = "${opr.toStringAsFixed(2)}";
                        setState(() {});
                      },
                      child: Text(
                        "/",
                        style: TextStyle(color: Colors.white, fontSize: 50),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepPurpleAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "= $result",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.deepPurpleAccent,
              ),
            )
          ],
        ),
      ),
    );
  }
}
