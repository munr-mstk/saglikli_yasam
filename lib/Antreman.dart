import 'package:flutter/material.dart';
import 'package:mobil_programlama_uygulamasi/Antreman.dart';
import 'package:mobil_programlama_uygulamasi/BICEPS.dart';
import 'package:mobil_programlama_uygulamasi/CHEST.dart';
import 'package:mobil_programlama_uygulamasi/LEG.dart';
import 'package:mobil_programlama_uygulamasi/main.dart';
import 'package:mobil_programlama_uygulamasi/sayfa.dart';



void main() {
  runApp(const Antreman());
}

class Antreman extends StatelessWidget {
  const Antreman({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(" "),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.amber,
        body: ListView(
          children: [
            const  SizedBox(height: 50),
            ElevatedButton(

              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black
              ),
              child: const Text("CHEST"),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => CHEST()));
                print("giris yapildi.");

              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black
              ),
              child: const Text("BICEPS"),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => BICEPS()));

                print("giris yapildi.");

              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black
              ),
              child: const Text("LEG"),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => LEG()));

                print("giris yapildi.");

              },
            ),

          ],
        )

    );
  }
}

