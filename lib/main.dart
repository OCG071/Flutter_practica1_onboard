import 'package:flutter/material.dart';
import 'package:concentric_transition/concentric_transition.dart';
import 'package:lottie/lottie.dart';
import 'package:practica1_onboarding_screen/card.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practica 1',
      theme: ThemeData(primaryColor: Colors.blue),
      home:  Home(),
    );
  }
}

class Home extends StatelessWidget {
   Home({Key? key}) : super(key: key);

  final data = [
    CardIData(
      title: "¡ Bienvenido !",
      subtitle: "Este es el Instituto Tecnológico de México en Celaya",
      image: AssetImage("assets/images/logo.png"),
      backgroundColor: Colors.green,
      titleColor: Colors.pink,
      subtitleColor: Colors.white,
      background: LottieBuilder.asset("assets/annimations/a5.json"),
    ),
    CardIData(
      title: "Ingenieria en Sistemas Computacionales",
      subtitle:
          "Adquiere los conocimientos de alto nivel tecnológico y científico para ser un profesionista con visión innovadora capaz de crear y proveer soluciones de software e infraestructura computacional de vanguardia en la nueva y dinámica sociedad dela era digital.",
      image: AssetImage("assets/images/carrera.png"),
      backgroundColor: Colors.purple,
      titleColor: Colors.blue,
      subtitleColor: Colors.white,
      background: LottieBuilder.asset("assets/annimations/a1.json"),
    ),
    CardIData(
      title: "Nuestras Instalaciones",
      subtitle:
          "El instituto cuenta con laboratorios equipados con tecnologia de primer nivel en el desarrollo de competencias de las asignaturas que conforman el plan de estudios.",
      image: AssetImage("assets/images/instalaciones.png"),
      backgroundColor: Colors.white,
      titleColor: Colors.pink,
      subtitleColor: Colors.black,
      background: LottieBuilder.asset("assets/annimations/a3.json"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConcentricPageView(
        colors: data.map((e) => e.backgroundColor).toList(),
        itemCount: data.length,
        itemBuilder: (int index) {
          return CardI(data: data[index]);
        },
      ),
    );
  }
}
