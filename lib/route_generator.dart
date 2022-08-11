import 'package:flutter/material.dart';
import 'package:giftvaala/categories/categories.dart';
import 'package:giftvaala/contact_us/contact.dart';
import 'package:giftvaala/main.dart';
import 'package:giftvaala/policy_model/policy_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    
    //final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return buildRoute(const MyHomePage(),settings: settings);
      case '/policies':
        return buildRoute(const PolicyPage(),settings: settings);
      case '/contact' :
        return buildRoute(const ContactUs(),settings: settings);
      case '/categories' :
        return buildRoute(const Categories(),settings: settings);
      default:
        return _errorRoute();
    }
  }
  static Route<dynamic> _errorRoute() {
  return MaterialPageRoute(builder: ((context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error!!'),
      ),
      body: const Center(child: Text('Error!! ')),
      );
    }));
  }

  static MaterialPageRoute buildRoute(Widget child , {required RouteSettings settings}){
    return MaterialPageRoute(
      settings: settings,
      builder: (BuildContext context) => child,
    );
  }

}

