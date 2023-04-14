import 'package:flutter/material.dart';

void main() {
  runApp(const YULAF());
}

class YULAF extends StatelessWidget {
  const YULAF({super.key});

  @override
  Widget build(BuildContext context) {
    var ekranBilgisi =MediaQuery.of(context);           ///Coklu ekran icin.
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.height;

    return  Scaffold(
      appBar: AppBar(
        title: Text("YEMEK TARİFLERİ"),
        backgroundColor: Colors.amber,
      ),
      backgroundColor: Colors.amber,
      body: Column(
        children: [

          SizedBox(
              width: ekranGenisligi ,     ///farkli ekranlarda da ayni gorunsun diye .
              child: Image.asset("resimler/yulaf.png")
          ),
          Row(
            children: [
              Expanded(                 ///float action button
                child: SizedBox(
                  height: ekranGenisligi/15,
                  child: FloatingActionButton(         ///BEGENME BUTONU
                    child: Icon(Icons.thumb_up),
                    backgroundColor: Colors.black,
                    onPressed: (){
                      print("BEGENILDI");
                    },
                    mini:false,
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: ekranGenisligi/15,
                  child:
                  FloatingActionButton(   ///BEGENME BUTONU
                    child: Icon(Icons.thumb_down),
                    backgroundColor: Colors.black,
                    onPressed: (){
                      print("BEGENILMEDI");
                    },
                    mini:false,

                  ),
                ),
              ),

            ],
          ),
          Padding(
            padding:  EdgeInsets.all(ekranGenisligi/100),
            child: Column(                   ///yemek baslik
              crossAxisAlignment: CrossAxisAlignment.stretch,  ///baslik hizalama.
              children: [
                Text("Yulaf",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: ekranGenisligi/20)

                )
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.all(ekranYuksekligi/100),
            child: Yazi("Küçük bir tencere içerisinde suyu kaynattıktan sonra içerisinde yulaf ezmesini ekleyebilirsin. Ara sıra karıştırarak yulaf ezmesi suyu çektikten sonra tencereyi ocaktan alıp 2-3 dakika kadar bekletmelisin. Ardından dilimlenmiş muzu ve fıstık ezmesini yulafın aüzerine ekleyebilirsin. Dilersen üzerine toz tarçın serperek biraz daha tat katabilirsiniz"
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

