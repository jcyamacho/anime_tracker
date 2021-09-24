import 'package:flutter/material.dart';

import 'package:anime_tracker/src/components/error_details.dart';

class Error extends StatelessWidget {
  const Error({Key? key}) : super(key: key);

  static get page => const MaterialPage(child: Error());

  @override
  Widget build(BuildContext context) {
    return const ErrorDetail();
  }
}
