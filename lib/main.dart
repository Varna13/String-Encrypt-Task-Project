import 'package:flutter/material.dart';
import 'package:string_encrypt/decryption.dart';
import 'package:string_encrypt/encrypt.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gate',
      theme: ThemeData(
        backgroundColor: Colors.white70,
      ),
      home: const MyHome(title: 'Crypto String'),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Crypto String')),
        backgroundColor: Colors.white70,
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.zero,
              ),
              child: TextButton(
                child: Text('ENCRYPT'),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Color(0xFF00E676),
                  onSurface: Colors.grey,
                  padding: EdgeInsets.all(15),
                  minimumSize: Size(350.0, 12.0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) {
                        return const Encrypt();
                      },
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.zero,
              ),
              child: TextButton(
                child: Text('DECRYPT'),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Color(0xFFB71C1C),
                  onSurface: Colors.grey,
                  padding: EdgeInsets.all(15),
                  minimumSize: Size(350.0, 12.0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) {
                        return const Decrypt();
                      },
                    ),
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
