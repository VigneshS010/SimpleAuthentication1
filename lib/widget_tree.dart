import 'package:flutter/material.dart';
import 'package:firebase2/pages/home_page.dart';
import 'package:firebase2/auth.dart';
import 'package:firebase2/pages/login_register_page.dart';


class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (context,snapshot){
        if (snapshot.hasData){
          return HomePage();
        }
        else{
          return  const LoginPage();
        }
      }, // List
    );
  }
}