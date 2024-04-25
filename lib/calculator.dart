import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Calcu extends StatefulWidget {
  Calcu({super.key});

  @override
  State<Calcu> createState() => _CalcuState();
}

class _CalcuState extends State<Calcu> {
  final myController = TextEditingController();

  final myController1 = TextEditingController();

  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Simplistic calculator'),
          centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                result.toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Center(),
            TextField(
              controller: myController,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Enter a number',
              ),
            ),
            TextField(
              controller: myController1,
              decoration: const InputDecoration(
                labelText: 'Enter a number',
              ),
            ),
            SizedBox(height: 50),
            Row(
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.all(12),
                  ),
                  onPressed: () {
                    //print(myController.text);
                    //print(myController1.text);
                    double num1 = double.parse(myController.text);
                    double num2 = double.parse(myController1.text);
                    result = num1+num2;
                    setState(() {

                    });
                    print(result);

                  },
                  child: const Text('+'),
                ),
                SizedBox(width: 200),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.all(12),
                  ),
                  onPressed: () {
                    //print(myController.text);
                    //print(myController1.text);
                    double num1 = double.parse(myController.text);
                    double num2 = double.parse(myController1.text);
                    result = num1-num2;
                    print(result);
                    setState(() {

                    });
                  },
                  child: const Text('-'),
                ),
                SizedBox(width: 200),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.all(12),
                  ),
                  onPressed: () {
                    //print(myController.text);
                    //print(myController1.text);
                    double num1 = double.parse(myController.text);
                    double num2 = double.parse(myController1.text);
                    result = num1*num2;
                    print(result);
                    setState(() {

                    });
                  },
                  child: const Text('*'),
                ),
                SizedBox(width: 200),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.all(12),
                  ),
                  onPressed: () {
                    //print(myController.text);
                    //print(myController1.text);
                    double num1 = double.parse(myController.text);
                    double num2 = double.parse(myController1.text);
                    result = num1/num2;
                    setState(() {

                    });
                    print(result);
                  },
                  child: const Text('/'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}