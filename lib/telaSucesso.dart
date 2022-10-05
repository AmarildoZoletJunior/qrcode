import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

import 'TelaPrincipal.dart';

class Qrcode extends StatefulWidget {

  String nome;
  int num;
  Qrcode(this.nome,this.num);

  @override
  State<Qrcode> createState() => _QrcodeState();
}

class _QrcodeState extends State<Qrcode> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
       leading: IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp1()));}, icon: Icon(Icons.home),)
        ),
        body: Container(
        color: Colors.white,
        child:   Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SafeArea(child: Text("Codigo gerado com sucesso!!",textAlign: TextAlign.center,style: TextStyle(fontSize:35))),
            SafeArea(
              child: Center(
                child: QrImage(
  data: widget.nome,
                  version: widget.num,
                  size: 250.0,
                  foregroundColor: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}
