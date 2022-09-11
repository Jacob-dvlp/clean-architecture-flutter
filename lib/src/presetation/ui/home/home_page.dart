import 'package:flutter/material.dart';

import 'widget/custom_home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Posts"),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        body: const CustomHomePageBody());
  }
}
