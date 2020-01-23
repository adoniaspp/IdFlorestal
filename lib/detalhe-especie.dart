import 'package:flutter/material.dart';

class DetalheEspecie extends StatefulWidget {
  @override
  _DetalheEspecieState createState() => _DetalheEspecieState();
}

class _DetalheEspecieState extends State<DetalheEspecie> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      home: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: true,
            title: Text(
              "Detalhe Espécie",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          body:
           Container(
             child: Padding(
               padding: const EdgeInsets.all(1.0),
               child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.network(
                      'https://http2.mlstatic.com/palmeira-moinho-de-vento-200-sementes-para-mudas-D_NQ_NP_929100-MLB30054818061_042019-F.jpg',
                      width: 800,
                      height: 200,
                    ),
                    Container(
                      child: Padding(
                          padding: EdgeInsets.all(22.1),
                          child: Text(
                              "A palmeira-moinho-de-vento é uma espécie dióica, ornamental, nativa de regiões temperadas e subtropicais da China, Japão, Birmânia e Índia. Ela se tornou conhecida em diversas partes do mundo, por sua preferência por climas subtropicais e resistência ao frio intenso, o que a torna uma palmeira de eleição para regiões mais frias, onde outras espécies pereceriam ao primeiro inverno. Apresenta estipe (tronco) único, mais engrossado em sua base, e recoberto por uma densa camada de fibras escuras e pela base dos pecíolos das folhas que já caíram.",
                            textAlign: TextAlign.justify,
                              style: TextStyle(fontSize: 17.5, color: Colors.grey)
                         )
                         ),
                    ),
                  ],
                ),
          ),
             ),
           )
          ),
    );
  }
}