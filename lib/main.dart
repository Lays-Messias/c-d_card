import 'package:card_series/src/credit_card/credit_card.dart';
import 'package:card_series/src/simple_card/simple_card.dart';
import 'package:flutter/material.dart';

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
  String title = 'SingleChildScrollView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffBACAD9),
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Container(
        height: 1500,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CreditCard(),
                SimpleCard(
                  title: "Não sei",
                  subtitle: "Não sei 2.0",
                  icon: Icons.arrow_forward,
                  imageUrl:
                      "https://www.mastercard.com.br/content/dam/public/mastercardcom/lac/br/home/consumidores/encontre-seu-cartao/tarjeta-black-credito-1280x720.jpg",
                  onClick: () {
                    print("Não sei");
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
