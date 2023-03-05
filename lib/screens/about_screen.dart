import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {

  // const AboutScreen({Key? key}) : super(key: key);

  String _message = 'عن التطبيق';

  @override
  Widget build(BuildContext context) {
    ModalRoute? modalRoute = ModalRoute.of(context);
    if (modalRoute != null) {
      Map<String, dynamic> arguments = modalRoute.settings.arguments as Map<String, dynamic>;
      if (arguments.containsKey('message')) {
        _message = arguments['message'];
      }
    }
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
          _message,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.black
          ),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: const Center(
        child: Text(
          'تطبيق سبحة الأذكار',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
    );
  }
}
