import 'package:flutter/material.dart';
import 'Detail.dart';

class Home extends StatelessWidget {
  final String time1 = "Ceará";
  final String urlTime1 =
      "https://2.bp.blogspot.com/-BL4yHhRNiv4/WMF6f5IvFrI/AAAAAAAAmN8/xljfxwx4LVcPEOBKQr8lzUzGwW4dtyenQCLcB/s320/2rcc4fl.png";
  final String titulosTime1 = "3";

  final String time2 = "Palmeiras";
  final String urlTime2 =
      "https://logodownload.org/wp-content/uploads/2015/05/palmeiras-logo-4.png";
  final String titulosTime2 = "5";

  final String time3 = "Corinthians";
  final String urlTime3 =
      "https://static.wixstatic.com/media/29c778_c2ce4ad26fe149599db7e007e397c6ae~mv2.png/v1/fill/w_280,h_280,fp_0.50_0.50/29c778_c2ce4ad26fe149599db7e007e397c6ae~mv2.png";
  final String titulosTime3 = "7";

  final String time4 = "Fluminense";
  final String urlTime4 =
      "https://upload.wikimedia.org/wikipedia/commons/a/ad/Fluminense_FC_escudo.png";
  final String titulosTime4 = "2";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hero Futebol",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
          child: Container(
        height: 150,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            timeTile(context, time1, urlTime1, titulosTime1),
            timeTile(context, time2, urlTime2, titulosTime2),
            timeTile(context, time3, urlTime3, titulosTime3),
            timeTile(context, time4, urlTime4, titulosTime4),
          ],
        ),
      )),
    );
  }

  Widget timeTile(
      BuildContext context, String time, String url, String titulos) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (c) => Detail(time, url, titulos))); 
      },
      child: Container(
        height: 150,
        width: 150,
        child: Hero(
          tag: time,
          child: Image.network(url),
        ),
      ),
    );
  }
}
