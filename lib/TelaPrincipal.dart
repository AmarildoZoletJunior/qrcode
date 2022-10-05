import 'package:flutter/material.dart';
import 'package:qrcodeproject/telaSucesso.dart';

class MyApp1 extends StatefulWidget {
  @override
  State<MyApp1> createState() => tela1();
}


class tela1 extends State<MyApp1> {

  final myController = TextEditingController();
  final number = TextEditingController();
  // This widget is the root of your application.

  final _formKey = GlobalKey<FormState>();
  @override

  void abrirSegundaTela(){
    String link;
    int num;

    setState(() {
      link = myController.text;
      num = int.parse(number.text);
      Navigator.push(context, MaterialPageRoute(builder: (context) => Qrcode(link,num)));
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("./imagens/logo.png",color: Colors.red,width: 250,),
              SafeArea(child: Center(child: Text("Seja bem vindo ao gerador de QRCODE, aqui você pode gerar um QRcode de tudo que você quiser, basta apenas colar qualquer coisa abaixo",
                textAlign: TextAlign.center,style: TextStyle(fontSize: 18),))),
              SafeArea(child: Center(child: Text("***Tenha muito cuidado com o campo de numero, ele irá definir o tamanho do seu QRCode",
                textAlign: TextAlign.center,style: TextStyle(fontSize: 15,color: Colors.redAccent),))),
              SafeArea(
                child: Center(
                  child: Container(
                    width: 320,
                    child: TextFormField(
                      validator: (value){
                        if(value.toString().length < 1){
                          return 'Este campo necessita de pelo menos 2 caracteres';
                        }
                      },
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
              SafeArea(
                child: Center(
                  child: Container(
                    width: 320,
                    child: TextFormField(
                      validator: (value){
                        if(value.toString().length < 1){
                          return 'Este campo necessita de pelo menos 2 caracteres';
                        }
                        int teste = int.parse(value.toString());
                        final b = RegExp(r'^[0-9]+$');
                        if(b.hasMatch(value.toString()) == false){
                          return "Este campo não pode conter letras";
                        }
                          if(teste < 1 || teste > 40){
                            return "Este campo so pode conter numero entre 1 e 40";
                          }
                      },
                      controller: number,
                      decoration: const InputDecoration(
                        icon: Icon(Icons.numbers),
                        hintText: 'Digite um numero',
                        labelText: 'Digite um numero para criar um qrcode',
                      ) ,
                    ),
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 30),
                  width: 230,
                  height: 60,

                  child: ElevatedButton(
                    child: Text('Criar QRCODE'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal,
                    ),
                    onPressed: () {
                      if(_formKey.currentState!.validate()){
                        abrirSegundaTela();
                      }
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}