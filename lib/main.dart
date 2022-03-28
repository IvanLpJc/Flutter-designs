import 'package:flutter/material.dart';

import 'package:disenos/src/screens/screens.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //i Con esto modificamos los colores de los iconos de la barra de tareas
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData.dark(),
      initialRoute: 'basicDesign',
      routes: {
        'basicDesign': (_) => const BasicDesignScreen(),
        'scrollScreen': (_) => ScrollScreen(),
        'homeScreen': (_) => const HomeScreen(),
      },
    );
  }
}
