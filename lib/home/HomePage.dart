import 'package:auth_wall/util/widgets/MaxSizedBox.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const MaxSizedBox(
          child: Center(
        child: Text("Home Page"),
      ));
}
