import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> animationLinks = [
    'https://assets5.lottiefiles.com/packages/lf20_p8bfn5to.json',
    'https://assets5.lottiefiles.com/packages/lf20_usmfx6bp.json',
    'https://assets5.lottiefiles.com/packages/lf20_lzsqii0q.json',
    'https://assets5.lottiefiles.com/packages/lf20_Stt1R6.json',
        'https://assets5.lottiefiles.com/packages/lf20_3f74tpw6.json',
  ];
  int index = 0;

  changeAnimation() async {
    for (int i = 0; i < animationLinks.length; i++) {
      await Future.delayed(Duration(milliseconds: 3000));
      setState(() {
        index = i;
      });
    }
  }

  @override
  void initState() {
    changeAnimation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 180),
              child: Text(
                '${index+1}',
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 100,
                    fontWeight: FontWeight.bold),
              ),
            )),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Lottie.network(
                animationLinks[index],
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
