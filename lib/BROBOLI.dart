import 'package:flutter/material.dart';

void main() {
  runApp(const BROKOLI());
}

class BROKOLI extends StatelessWidget {
  const BROKOLI({super.key});

  @override
  Widget build(BuildContext context) {
    var ekranBilgisi =MediaQuery.of(context);           ///Coklu ekran icin.
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.height;return Scaffold(
      appBar: AppBar(
        title: Text("YEMEK TARİFLERİ"),
        backgroundColor: Colors.amber,
      ),
      backgroundColor: Colors.amber,
      body: Column(
        children: [
          SizedBox(
              width: ekranGenisligi ,     ///farkli ekranlarda da ayni gorunsun diye .
              child: Image.asset("resimler/brokoli.png")
          ),
          Row(
            children: [
              Expanded(                 ///float action button
                child: SizedBox(
                  height: ekranGenisligi/15,
                  child: FloatingActionButton(  ///BEGENME BUTONU
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
                Text("Brokoli",
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
            child: Yazi( "Tencereye zeytinyağını alın ve ince ince doğradığınız kuru soğanları pembeleşene dek kavurun."
                "Havuçları ve patatesleri küp küp doğrayın ve tencereye alıp bir kaç kez kavurun."
                "Daha sonra içerisine salçayı ve baharatları ilave edin."
                "Üstlerini biraz geçecek kadar sıcak su ilave edin ve yaklaşık 10 dakika bu şekilde pişmeye bırakın."
                "Yıkayıp küçük küçük doğradığınız brokolileri de tencereye alın, kapağını kapatın ve kısık ateşte tüm sebzeler yumuşayana dek yaklaşık 10 dakika daha pişirmeye devam edin."
                "Sıcak olarak servis edin."
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

