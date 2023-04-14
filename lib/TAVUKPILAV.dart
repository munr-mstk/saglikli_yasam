import 'package:flutter/material.dart';

void main() {
  runApp(const TAVUKPILAV());
}

class TAVUKPILAV extends StatelessWidget {
  const TAVUKPILAV({super.key});

  @override
  Widget build(BuildContext context) {
    var ekranBilgisi =MediaQuery.of(context);           ///Coklu ekran icin.
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("YEMEK TARİFLERİ"),
        backgroundColor: Colors.amber,
      ),
      backgroundColor: Colors.amber,
      body: Column(
        children: [

          SizedBox(
              width: ekranGenisligi/ 1,     ///farkli ekranlarda da ayni gorunsun diye .
              child: Image.asset("resimler/tavukpilavv.png")
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
                Text("Tavuk pilav",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: ekranGenisligi/20)

                )
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.all(ekranYuksekligi/150),
            child: Yazi("  Pirinçleri güzelce kadar yıkayın ve pilavınızı pişirene kadar ılık su içerisinde bekletmeye devam edin. Tavuğu bir tencereye koyup üzerini geçecek kadar su ekledikten sonra iyice haşlanana kadar pişirin. Ardından hafif soğuduktan sonra didikleyin."
                " Bir pilav tenceresinde tereyağını eritin ve üzerine pirinçleri ekleyip birkaç dakika kavurun."
                "  Daha sonra, pirinçlerin üzerine didiklediğiniz tavuk etlerini ekleyin. Tavuk suyu ve kaynamış suyu da ekledikten sonra tuz ve karabiberi ilave edip hafifçe karıştırın ve tencerenin kapağını kapatıp kısık ateşte pişirin."
                "  Pilav pişerken arada tahta kaşık yardımıyla yavaşça karıştırın. Pilav suyunu çekince ocağı kapatın ve tencerenin kapağının altına bir kağıt havlu koyarak demlenmeye bırakın. Pilavınız demlenince servis edebilirsiniz. Afiyet olsun!"
                , ekranGenisligi/50),
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

