import 'package:flutter/material.dart';
import 'package:mobil_programlama_uygulamasi/TEKRARTAKIP.dart';

void main() {
  runApp(const BICEPS());
}

class BICEPS extends StatelessWidget {
  const BICEPS({super.key});

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
              width: ekranGenisligi/3,     ///farkli ekranlarda da ayni gorunsun diye .
              child: Image.asset("resimler/kol1.png")
          ),
          SizedBox(
              width: ekranGenisligi/3,     ///farkli ekranlarda da ayni gorunsun diye .
              child: Image.asset("resimler/kol2.png")
          ),
          Row(
            children: [
              Expanded(                 ///float action button
                child: SizedBox(
                  height: ekranGenisligi/15,
                  child: ElevatedButton(   ///BEGENME BUTONU
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
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
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text("Biceps",
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
              Yazi("onerilen tekrar sayisi :3*20", ekranGenisligi/20,
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

