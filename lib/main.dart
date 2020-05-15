import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:backdrop/backdrop.dart';
import 'dart:async';

void main() => runApp(WebViewDemo());

class WebViewDemo extends StatefulWidget {
  final String title = 'Webview';
  @override
  _WebViewDemoState createState() {
    return _WebViewDemoState();
  }
}

class _WebViewDemoState extends State<WebViewDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: BackdropScaffold(
        title: Text("Farmers Portal"),
        iconPosition: BackdropIconPosition.action,
        headerHeight: 80.0,
        frontLayer: Builder(
          builder: (BuildContext context) {
            return WebView(
              initialUrl: 'https://flutter.dev',
              javascriptMode: JavascriptMode.unrestricted,
            );
          },
        ),
        backLayer: SafeArea(
          child: Column(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.wb_sunny),
                title: Padding(
                  padding: EdgeInsets.fromLTRB(
                    78,
                    10,
                    10,
                    10,
                  ),
                  child: Text(
                    'FARMERS PORTAL',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Merienda-Bold',
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 150.0,
                child: Divider(
                  color: Colors.teal[900],
                ),
              ),
              Text('Developers:'),
              ListTile(
                leading: Icon(Icons.code),
                title: Text(
                  'Mohammed Rehan Deshnoor',
                  style: TextStyle(fontSize: 14, fontFamily: 'Merienda-Bold'),
                ),
              ),
              ListTile(
                leading: Icon(Icons.code),
                title: Text(
                  'Premraj Kangralkar',
                  style: TextStyle(fontSize: 14, fontFamily: 'Merienda-Bold'),
                ),
              ),
              ListTile(
                leading: Icon(Icons.code),
                title: Text(
                  'Anish Jadhav',
                  style: TextStyle(fontSize: 14, fontFamily: 'Merienda-Bold'),
                ),
              ),
              ListTile(
                leading: Icon(Icons.code),
                title: Text(
                  'Balaji Vaniki',
                  style: TextStyle(fontSize: 14, fontFamily: 'Merienda-Bold'),
                ),
              ),
              Text('v1.0'),
            ],
          ),
        ),
      ),
    );
  }
}
