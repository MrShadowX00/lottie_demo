import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


class InitialPage extends StatefulWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Lottie.network('https://assets6.lottiefiles.com/packages/lf20_cYlUtyKjUB.json'),
      )
    );
  }
}
