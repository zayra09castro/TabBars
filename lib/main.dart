import 'package:flutter/material.dart';

void main() => runApp(CastroApp());

class CastroApp extends StatefulWidget {
  @override
  _CastroAppState createState() => _CastroAppState();
} // fin de clase CastroApp

class _CastroAppState extends State<CastroApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData(brightness: Brightness.dark), home: Principal());
  }
} // fin de clase _CastroAppState

class Principal extends StatefulWidget {
  @override
  _PrincipalState createState() => _PrincipalState();
} //fin clase principal

class _PrincipalState extends State<Principal> with SingleTickerProviderStateMixin {
  TabController controller;
  void initState() {
    super.initState();
    controller = TabController(
      length: 5,
      vsync: this,
      initialIndex: 0,
    );
  } //fin de iniciar estado con 5 Tab iconos

  Widget card(String text) {
    return Card(
      color: Colors.pink,
      child: Container(
        height: 200.0,
        width: 200.0,
        child: Center(child: Text(text)),
      ),
    );
  } //fin de tarjeta

  Tab tab(String text, Icon icon) {
    return Tab(
      icon: icon,
      text: text,
    );
  } //fin de Tab enviado texto y el icono

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabBars CastroApp"),
        centerTitle: true,
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 0.0,
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          card("Tarjeta no 1 Inicio Mi Casa"),
          card("Avion no 2"),
          card("Transporte no 3"),
          card("Ruta de seguimiento no 4"),
          card("Red wifi no 5"),
        ],
      ),
      bottomNavigationBar: TabBar(
        controller: controller,
        isScrollable: true,
        tabs: <Widget>[
          tab("Casa", Icon(Icons.home)),
          tab("Viajes", Icon(Icons.airplanemode_on)),
          tab("Transporte", Icon(Icons.airport_shuttle)),
          tab("Ruta", Icon(Icons.alt_route)),
          tab("Wifi", Icon(Icons.wifi)),
        ],
      ),
    ); //fin de scaffold
  } //fin de widget

} //fin clase_PrincipalState
