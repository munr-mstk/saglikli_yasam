import 'package:flutter/material.dart';
import 'package:mobil_programlama_uygulamasi/Antreman.dart';
import 'package:mobil_programlama_uygulamasi/TEKRARTAKIP.dart';

void main() {
  runApp(const CHEST());
}

class CHEST extends StatelessWidget {
  const CHEST({super.key});

  @override
  Widget build(BuildContext context) {
    var ekranBilgisi =MediaQuery.of(context);           ///Coklu ekran icin.
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("HAREKETLER"),
        backgroundColor: Colors.amber,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [

          SizedBox(
              width: ekranGenisligi/2 ,     ///farkli ekranlarda da ayni gorunsun diye .
              child: Image.asset("resimler/gog.png")
          ),
          SizedBox(
              width: ekranGenisligi/3 ,     ///farkli ekranlarda da ayni gorunsun diye .
              child: Image.asset("resimler/db.png")
          ),

          Row(
            children: [
              Expanded(///float action button
                child: SizedBox(
                  height: ekranGenisligi/15,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black
                    ),///BEGENME BUTONU
                    child: Icon(Icons.task_alt),



                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => TEKRARTAKIP()));

                      print("Set kayit ekranina gidildi");
                    },
                  ),
                ),
              ),


            ],
          ),
          Padding(
            padding:  EdgeInsets.all(ekranGenisligi/100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,  ///baslik hizalama.
              children: [
                Text("BENCH PRESS",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: ekranGenisligi/20)

                )

              ],
            ),
          ),
          Column(
            children: [
              Yazi('Onerilen tekrar sayisi:4*10', ekranGenisligi/20,
              )
            ],
          ),

        ],
      ),

    );
  }
}

class Yazi extends StatelessWidget {

  String icerik;
  double yaziBoyut;
  Yazi(this.icerik, this.yaziBoyut);
  @override
  Widget build(BuildContext context) {
    return Text(icerik,style: TextStyle(fontSize: yaziBoyut),);
  }
}

