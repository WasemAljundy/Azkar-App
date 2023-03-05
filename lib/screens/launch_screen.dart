import 'package:flutter/material.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/azkar_screen');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: AlignmentDirectional.topStart,
                end: AlignmentDirectional.topEnd,
                colors: [
              Colors.teal.shade800,
              Colors.teal.shade300,
            ])),
        child: const Text(
          'مسبحة الأذكار  📿',
          style: TextStyle(
            fontSize: 30,
            fontFamily: 'ReemKufi',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
