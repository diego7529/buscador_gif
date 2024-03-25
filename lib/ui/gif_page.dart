import 'package:flutter/material.dart';
import 'package:share/share.dart';



class GifPage extends StatelessWidget {
  final Map _gifData;
  const GifPage(this._gifData, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_gifData["title"]),
        backgroundColor: Colors.blue,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Share.share(_gifData["images"]["fixed_height"]["url"]);
            },
            icon: const Icon(Icons.share),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Image.network(_gifData["images"]["fixed_height"]["url"]),
      ),
    );
  }
}