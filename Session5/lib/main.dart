import 'dart:io';

import 'package:flutter/material.dart';
 import 'lists.dart';
import 'messages_screen.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() {
  runApp( Messages());



  Future<void> main() async {
    HttpOverrides.global = MyHttpOverrides();

  }
}

class Messages extends StatelessWidget {
  const Messages({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Messages',
      theme: ThemeData(
       primarySwatch: Colors.blue,


      ),
      home:  ListViewScreen(),
    );
  }
}
