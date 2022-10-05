import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Qrcode extends StatefulWidget {

  String nome;
  Qrcode(this.nome);

  @override
  State<Qrcode> createState() => _QrcodeState();
}

class _QrcodeState extends State<Qrcode> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
        color: Colors.white,
        child:   Column(
          children: [
            SafeArea(child: Text("Codigo gerado com sucesso!!",textAlign: TextAlign.center,style: TextStyle(fontSize:35))),
            SafeArea(
              child: Center(
                child: QrImage(
  data: widget.nome,
                  version: 3,
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
