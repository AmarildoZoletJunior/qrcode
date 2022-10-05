import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(image: AssetImage("../imagens/logo.png")),
            SafeArea(child: Text("Seja bem vindo ao app gerador de QRCODE")),
            SafeArea(
              child: Center(
                child: Container(
                  width: 320,
                  child: TextFormField(
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
                    print('Pressed');
                  },
                ))
          ],
        ),
      ),
    );
  }
}