



// ignore_for_file: unnecessary_import

import 'package:d_view/d_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ErrorPgae extends StatelessWidget {
  const ErrorPgae(Type string, {super.key,required this.title, required this.description});
  final String description;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
         padding: const EdgeInsets.all(16),
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DView.textTitle(title),
            DView.spaceHeight(),
            DView.error(description)
          ],
         ),
         ),
    );
  }
}