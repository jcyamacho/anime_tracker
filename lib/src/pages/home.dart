import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  static get page => MaterialPage(
        child: Scaffold(
          appBar: AppBar(title: const Text('Anime Tracker')),
          body: const Home(),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Home!'),
    );
  }
}
