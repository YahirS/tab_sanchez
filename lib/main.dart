import 'package:flutter/material.dart';
import 'package:sanchez/paginas_tabs/paginatb1.dart';
import 'package:sanchez/paginas_tabs/paginatb2.dart';
import 'package:sanchez/paginas_tabs/paginatb3.dart';

void main() {
  runApp(MaterialApp(
      // Title
      title: "Master Sanchez",
      // Home
      home: Micasa()));
} // fin de main

class Micasa extends StatefulWidget {
  @override
  MicasaState createState() => MicasaState();
} // fin de Micasa

class MicasaState extends State<Micasa> with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    super.initState();

    // Initialize the Tab Controller
    controller = TabController(length: 3, vsync: this);
  } //fin de iniciar estado

  @override
  void dispose() {
    // Dispose of the Tab Controller
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: AppBar(
        // Title
        title: Text("Uso de la barra de navegacion inferior"),
        // Set the background color of the App Bar
        backgroundColor: Colors.black,
      ),
      // Set the TabBar view as the body of the Scaffold
      body: TabBarView(
        // Add tabs as widgets
        children: <Widget>[
          PrimerTab(),
          SegundoTab(),
          TercerTab()
        ],
        // set the controller
        controller: controller,
      ),
      // Set the bottom navigation bar
      bottomNavigationBar: Material(
        // set the color of the bottom navigation bar
        color: Colors.black,
        // set the tab bar as the child of bottom navigation bar
        child: TabBar(
          tabs: <Tab>[
            Tab(
              // set icon to the tab
              icon: Icon(Icons.favorite),
            ),
            Tab(
              icon: Icon(Icons.color_lens),
            ),
            Tab(
              icon: Icon(Icons.airplanemode_active),
            ),
          ],
          // setup the controller
          controller: controller,
        ), // fin de child
      ), //navigator pie de pagina
    ); //fin de scaffold
  } // fin de widget
} // micasastate
