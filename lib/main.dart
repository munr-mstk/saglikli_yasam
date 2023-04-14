import 'package:flutter/material.dart';
import 'package:mobil_programlama_uygulamasi/welcomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    
    var ekranBilgisi =MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenislisi = ekranBilgisi.size.width;



    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: SingleChildScrollView(   ///klavye acildigindaki hatayi giderir.
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Image.asset("resimler/img.png"),
              ),
              Padding(
                padding:  EdgeInsets.all(ekranYuksekligi/30),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    hintText: "Kullanici Adi",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.all(ekranYuksekligi/30),
                child: TextField(
                  obscureText: true,///sifre gizleme
                  controller:  passwordController,
                  decoration: InputDecoration(
                    hintText: "Sifre",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: ekranGenislisi/1.2,
                height: ekranGenislisi/12,
                child: ElevatedButton(
                  child: Text("Giris"),
                  onPressed:  (){
                    print(nameController.text);
                    print( passwordController);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => welcomeScreen(nameController.text,)));
                   print("Giris Yapildi");


                   },
                ),

              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Yardim ?"),
              ),
              
            ],
          ),
        ),
      ),

    );
  }
}
