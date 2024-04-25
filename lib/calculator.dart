import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calcu extends StatelessWidget {
  Calcu({super.key});

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
                '9234.0',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Center(),
            TextField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Enter a number',
              ),
            ),
            TextField(
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
                  onPressed: () {},
                  child: const Text('+'),
                ),
                SizedBox(width: 200),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.all(12),
                  ),
                  onPressed: () {},
                  child: const Text('-'),
                ),
                SizedBox(width: 200),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.all(12),
                  ),
                  onPressed: () {},
                  child: const Text('*'),
                ),
                SizedBox(width: 200),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.all(12),
                  ),
                  onPressed: () {},
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
