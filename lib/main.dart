import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:giftvaala/bottom_navbar/navbar.dart';
import 'package:giftvaala/drawer/drawer.dart';
import 'package:giftvaala/route_generator.dart';

import 'home_page_body/home_page_body.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gift Vaala',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,   
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  final String title = 'Gift Vaala';

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.pink,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: GestureDetector(
              onTap: () {},
              child: const Icon(Icons.search,size: 25.0,),
            )
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: const Icon(CupertinoIcons.heart_fill,size: 24.0,),
            )
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: const Icon(CupertinoIcons.cart_fill,size: 24.0,),
            )
          ),
        ],
      ),
      drawer: const MyDrawer(),
      body: const HomePageBody(),
      bottomNavigationBar: const NavBar() 
    );
  }
}
