import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:esys_share/esys_share.dart';

void main() => runApp(MaterialApp(
      home: MaterialApp(
        home: MyHomePage(),
      ),
    ));

class MyHomePage extends StatefulWidget {
  MyHomePage();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Esys Share Plugin Sample'),
        ),
        body: Container(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
              children: <Widget>[
                MaterialButton(
                  child: Text('Share text'),
                  onPressed: () async => await _shareText(),
                ),
                MaterialButton(
                  child: Text('Share image'),
                  onPressed: () async => await _shareImage(),
                ),
              ],
            )));
  }

  Future _shareText() async {
    try {
      await EsysShare.shareText(
          'This is my text to share with other applications.', 'my text title');
    } catch (e) {
      print('error: $e');
    }
  }

  Future _shareImage() async {
    try {
      final ByteData bytes = await rootBundle.load('assets/image.png');
      await EsysShare.shareImage(
          'myImageTest.png', bytes, 'my image title');
    } catch (e) {
      print('error: $e');
    }
  }
}