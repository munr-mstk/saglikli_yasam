import 'package:flutter/material.dart';
import 'package:mobil_programlama_uygulamasi/Antreman.dart';
import 'package:mobil_programlama_uygulamasi/BICEPS.dart';
import 'package:mobil_programlama_uygulamasi/BROBOLI.dart';
import 'package:mobil_programlama_uygulamasi/CHEST.dart';
import 'package:mobil_programlama_uygulamasi/LEG.dart';
import 'package:mobil_programlama_uygulamasi/TAVUKPILAV.dart';
import 'package:mobil_programlama_uygulamasi/YULAF.dart';
import 'package:mobil_programlama_uygulamasi/main.dart';


void main() {
  runApp(const BESLENME());
}

class BESLENME extends StatelessWidget {
  const BESLENME({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(" "),
          backgroundColor: Colors.amber,
        ),
        backgroundColor: Colors.amber,
        body: ListView(
          children: [
            const SizedBox(height: 50),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
              ),
              child: const Text("YULAF"),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => YULAF()));
                print("giris yapildi.");

              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
              ),
              child: const Text("BROKOLI"),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => BROKOLI()));
                print("giris yapildi.");

              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
              ),
              child: const Text("TAVUK PILAV"),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => TAVUKPILAV()));
                print("giris yapildi.");

              },
            ),

          ],
        )

    );

  }
}

