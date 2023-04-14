import 'package:flutter/material.dart';
import 'package:mobil_programlama_uygulamasi/BICEPS.dart';
import 'package:mobil_programlama_uygulamasi/sayfa.dart';



class welcomeScreen extends StatelessWidget{
  String nameController;
  welcomeScreen(this.nameController);

  @override
  Widget build(BuildContext context) {



    var ekranBilgisi=MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;

    return Scaffold(
        appBar: AppBar(
          title: Text("               "),
          backgroundColor: Colors.amber
        ),
        backgroundColor: Colors.amber,
        body: Column(
          children: [
            SizedBox(
                width: ekranGenisligi/1,
                child: Image.asset("resimler/hosgeldiniz.png" ,height: 300,)
            ),
            Padding(
              padding:  EdgeInsets.all(ekranYuksekligi/100),
              child: Column(

                children: [
                  Text("MERHABA ${nameController}",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: ekranGenisligi/13,
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Yazi("Bu uygulama icerisinde ,spor egzersizlerinin yapimini ogrenebilir ,yaptiginiz egzersizleri takip edebilir ve saglikli yemek tariflerine ulasabilirsiniz! ", ekranGenisligi/20,
                )
              ],
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: ekranGenisligi/1,
              height: ekranGenisligi/7,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black
                ),
                  child: Text("DEVAM ET "),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => sayfa()));
                    print("Devam");
                  }),
            ),
          ],
        )
    );
  }
}