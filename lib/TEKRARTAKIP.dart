import 'package:flutter/material.dart';

void main() {
  runApp(const TEKRARTAKIP());
}

class TEKRARTAKIP extends StatelessWidget {
  const TEKRARTAKIP({super.key});

  @override
  Widget build(BuildContext context) {
    var ekranBilgisi =MediaQuery.of(context);           ///Coklu ekran icin.
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("TEKRAR TAKIP"),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [

          SizedBox(
              width: ekranGenisligi/2 ,     ///farkli ekranlarda da ayni gorunsun diye .
              child: Image.asset("resimler/commingsoon.png")
          ),
          Row(
            children: [

            ],
          ),

          Padding(
            padding:  EdgeInsets.all(ekranYuksekligi/100),
            child: Yazi("BU SAYFA ICERISINDEN YAPILAN HAREKETLERIN TEKRARI TAKIP EDILECEK "
                "VE KULLANICI ANTREMAN ESNASINDA KENDISINI TAKIP EDEBILECEK"
                , ekranGenisligi/45),
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

