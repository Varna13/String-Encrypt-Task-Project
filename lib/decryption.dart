import 'package:flutter/material.dart';
class Decrypt extends StatefulWidget {
  const Decrypt({Key? key}) : super(key: key);

  @override
  State<Decrypt> createState() => _DecryptState();
}

class _DecryptState extends State<Decrypt>
{

  TextEditingController cntrlr=TextEditingController();

  var str;
  var result = "";

  void dcrypt(TextEditingController cntrlr) {
    if (cntrlr.text.trim().isEmpty) {
      return;
    }
    result="";
    str = cntrlr.text.trim() + " ";
    for(int i=0;i<str.length-1;i=i+2)
    {
      int count=0;
      int n=int.parse(str[i+1]);
      while(count<n)
      {
        result=result+str[i];
        count++;
      }
      setState(() {
        print(result);

      });
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child:const Text('Decryption')),
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
                  controller: cntrlr,
                  onChanged: (str){
                    setState(() {
                      result="";
                    });
                  },
                  decoration: InputDecoration(
                      labelText: 'Enter a String',
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,

                          )
                      ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    )

                  ),
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
                      dcrypt(cntrlr);
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(child: Text(result,style: TextStyle(fontSize:20,color: Colors.red),),),
              ],
            ),
          ),
        )
    );
  }
}

