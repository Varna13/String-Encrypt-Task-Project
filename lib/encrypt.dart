import 'package:flutter/material.dart';

class Encrypt extends StatefulWidget {
  const Encrypt({Key? key}) : super(key: key);

  @override
  State<Encrypt> createState() => _EncryptState();
}

class _EncryptState extends State<Encrypt> {
  TextEditingController controller = TextEditingController();
  var str;
  var result = "";

  void ncrypt(TextEditingController controller) {
    if (controller.text.trim().isEmpty) {
      return;
    }
    result = " ";
    str = controller.text.trim() + " ";
    for (int i = 0; i < str.length - 1; i++) {
      // Counting occurrences of s[i]
      int count = 1;
      while (str[i] == str[i + 1]) {
        i++;
        count++;
        if (i + 1 == str.length) break;
      }
      setState(() {
        result = result + str[i] + count.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text('Encryption'),
        ),
        backgroundColor: Colors.white70,
        foregroundColor: Colors.black,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: controller,
                onChanged: (str) {
                  setState(() {
                    result = "";
                  });
                },
                decoration: InputDecoration(
                    labelText: 'Enter a String',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black))),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: TextButton(
                  child: Center(child: Text('SUBMIT')),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Color(0xFF2979FF),
                    onSurface: Colors.grey,
                    padding: EdgeInsets.all(15),
                    minimumSize: Size(350.0, 12.0),
                  ),
                  onPressed: () {
                    ncrypt(controller);
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  result,
                  style: TextStyle(fontSize: 20, color: Colors.red),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
