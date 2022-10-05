import 'package:flutter/material.dart';
import 'package:qrcodeproject/telaSucesso.dart';

class MyApp1 extends StatefulWidget {
  @override
  State<MyApp1> createState() => tela1();
}


class tela1 extends State<MyApp1> {

  final myController = TextEditingController();
  // This widget is the root of your application.
  @override

  void abrirSegundaTela(){
    String link;

    setState(() {
      link = myController.text;

      Navigator.push(context, MaterialPageRoute(builder: (context) => Qrcode(link)));
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("./imagens/logo.png",color: Colors.red,),
            SafeArea(child: Center(child: Text("Seja bem vindo ao gerador de QRCODE, aqui você pode gerar um QRcode de tudo que você quiser, basta apenas colar qualquer coisa abaixo",
              textAlign: TextAlign.center,style: TextStyle(fontSize: 15),))),
            SafeArea(
              child: Center(
                child: Container(
                  width: 320,
                  child: TextFormField(
                    controller: myController,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.qr_code),
                      hintText: 'Digite o que quiser',
                      labelText: 'Cole aqui seu link',
                    ) ,
                  ),
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 30),
                width: 270,
                height: 80,

                child: ElevatedButton(
                  child: Text('Criar QRCODE'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.teal,
                    onPrimary: Colors.white,
                    onSurface: Colors.grey,
                  ),
                  onPressed: () {
                    abrirSegundaTela();
                  },
                ))
          ],
        ),
      ),
    );
  }
}