import 'package:flutter/material.dart';
import 'package:mobil_programlama_uygulamasi/Antreman.dart';
import 'package:mobil_programlama_uygulamasi/BESLENME.dart';


void main() {
  runApp(const sayfa());
}


class sayfa extends StatelessWidget {
  const sayfa({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text(""),
          backgroundColor: Colors.amber,
        ),
        backgroundColor: Colors.amber,
        body: ListView(
          children: [
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black
              ),

              onPressed:  (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Antreman()));
                print("Giris Yapildi");
              },
              child: const Text("ANTREMAN"),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black
              ),
              child: const Text("BESLENME"),

              onPressed:  (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => BESLENME()));
                print("Giris Yapildi");

              },
            ),
          ],
        )

    );
  }
}



