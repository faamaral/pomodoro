import 'package:flutter/material.dart';

class EntradaTempo extends StatelessWidget {
  final String titulo;
  final int valor;
  final void Function()? inc;
  final void Function()? dec;
  const EntradaTempo({super.key, required this.valor, required this.titulo, this.inc, this.dec});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          titulo,
          style: TextStyle(fontSize: 25),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: dec,
              child: Icon(
                Icons.arrow_downward,
                color: Colors.white,
              ),
              style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(15),
                  backgroundColor: Colors.red),
            ),
            Text(
              '${this.valor} min',
              style: TextStyle(fontSize: 18),
            ),
            ElevatedButton(
              onPressed: inc,
              child: Icon(
                Icons.arrow_upward,
                color: Colors.white,
              ),
              style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(15),
                  backgroundColor: Colors.red),
            ),
          ],
        ),
      ],
    );
  }
}
