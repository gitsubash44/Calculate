import 'package:flutter/material.dart';

void main() {
  runApp(const CalcuApp());
}

class CalcuApp extends StatelessWidget {
  const CalcuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calcu App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController controllerP = TextEditingController();
  TextEditingController controllerT = TextEditingController();
  TextEditingController controllerR = TextEditingController();
  double interest = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 223, 61, 43),
        elevation: 6,
        centerTitle: true,
        title: const Text(
          "Calculator app",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Principle",
              style: TextStyle(fontSize: 20),
            ),
            TextField(
              controller: controllerP,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
            const SizedBox(height: 12),
            const Text(
              "Time",
              style: TextStyle(fontSize: 20),
            ),
            TextField(
              controller: controllerT,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
            const SizedBox(height: 12),
            const Text(
              "Rate",
              style: TextStyle(fontSize: 20),
            ),
            TextField(
              controller: controllerR,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
            const SizedBox(height: 12),

            // button
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      // ignore: prefer_const_constructors
                      backgroundColor: Color.fromARGB(255, 223, 61, 43)),

                  //calcutation and logic
                  onPressed: () {
                    interest = double.parse(controllerP.text) *
                        double.parse(controllerT.text) *
                        double.parse(controllerR.text) /
                        100;

                    setState(() {});
                  },
                  child: const Text(
                    "Calculate",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 14),
            // ignore: prefer_const_constructors
            Text("interest:  $interest", style: TextStyle(fontSize: 25)),
          ],
        ),
      ),
    );
  }
}
