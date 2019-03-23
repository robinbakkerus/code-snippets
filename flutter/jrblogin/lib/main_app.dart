import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'background.dart';
import 'loginUi.dart';
import 'signin_page.dart';

class MyBeatifulApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[
            Background(),
            Login(),
          ],
        ));
  }
}


class StartApp {
  static MaterialApp start() {
  return MaterialApp(

    title: 'Demo',
    initialRoute: '/',
    routes: {
      '/': (context) => MyBeatifulApp(),
      '/login': (context) => SignInPage(),
    },
  );
  }
}