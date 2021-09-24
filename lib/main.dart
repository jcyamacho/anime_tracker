import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'src/app.dart';

void main() {
  runApp(ProviderScope(
    child: MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blueGrey,
      ),
      home: const App(),
    ),
  ));
}
