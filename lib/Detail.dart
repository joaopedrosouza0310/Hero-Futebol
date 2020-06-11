import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final String time, url, titulos;

  Detail(this.time, this.url, this.titulos);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Detalhes time",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 40),
            Container(
                height: 300,
                width: 300,
                child: Hero(
                  tag: time,
                  child: Image.network(url),
                )),
            Text(time,
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
            Text("Titulos: $titulos",
                style: TextStyle(fontSize: 20, color: Colors.grey[900]))
          ],
        ),
      ),
    );
  }
}
