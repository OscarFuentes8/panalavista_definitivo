import 'package:flutter/material.dart';
import 'package:panalavista_definitivo/pages/valoracion.dart';

class ComentariosScreen extends StatefulWidget {
  @override
  _ComentariosScreenState createState() => _ComentariosScreenState();
}

class _ComentariosScreenState extends State<ComentariosScreen> {
  String nombre = "";
  String apellidos = "";
  int rating = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Comentarios")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Nombre:"),
            TextFormField(
              onChanged: (value) {
                setState(() {
                  nombre = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            Text("Apellidos:"),
            TextFormField(
              onChanged: (value) {
                setState(() {
                  apellidos = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            Text("Calificación:"),
            Row(
              children: [
                for (int i = 1; i <= 5; i++)
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        rating = i;
                      });
                    },
                    child: Icon(
                      Icons.star,
                      color: i <= rating ? Colors.yellow : Colors.grey,
                    ),
                  ),
              ],
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MyValoracion(),
                ));
              },
              child: Text("Guardar Comentario"),
            ),
          ],
        ),
      ),
    );
  }
}
