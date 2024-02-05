import 'package:exar_co/constants/color.dart';
import 'package:exar_co/screen/transcript_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EXAR COPILOT',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorConstant().primaryColor,
      body: Container(
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxHeight < 100 || constraints.maxWidth < 450) {
              return _buildMobileLayout();
            } else {
              return _buildDesktopLayout();
            }
          },
        ),
      ),
    );
  }

  Widget _buildMobileLayout() {
    return Center(
      child: Text(
        'Mobile Layout',
        style: TextStyle(fontSize: 24),
      ),
    );
  }

  Widget _buildDesktopLayout() {
    return const TranscriptScreen();
  }
}
