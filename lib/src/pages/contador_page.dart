import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {

  @override
  _ContadorPageState createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {

  final _estiloTexto = new TextStyle(fontSize: 25);

  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Título'),
        centerTitle: true,
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de clicks:', style: _estiloTexto),
            Text('$_conteo', style: _estiloTexto)
          ],
        ),
      ),
      //home_page.dart: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _crearBotones()
    );
  }

  Widget _crearBotones() {
    return Row(
      children: <Widget>[
        SizedBox(width: 30.0,),
        FloatingActionButton(
          child: Icon(Icons.exposure_zero), 
          onPressed: _reset,
          backgroundColor: Colors.grey,
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          child: Icon(Icons.remove), 
          onPressed: _sustraer,
          backgroundColor: Colors.red[300],
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          child: Icon(Icons.add), 
          onPressed: _agregar,
          backgroundColor: Colors.green[800],
        ),
      ],
    );
  }

  void _agregar() {
    setState(() => _conteo++ );
  }

  void _sustraer() {
    setState(() => _conteo-- );
  }

  void _reset() {
    setState(() => _conteo = 0 );
  }
}

// FloatingActionButton(
//         child: Icon(Icons.add),
//         onPressed: () {
          
//           setState(() {
//             _conteo++;
//           });
//         },
//       ),