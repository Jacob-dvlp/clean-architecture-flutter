import 'package:flutter/cupertino.dart';

import 'app_home.dart';
import 'src/layers/core/dependecies/posts/inject_dependence_posts.dart'
    as dependecieposts;

void main() {
  dependecieposts.initInjectPost();
  runApp(const AppHome());
}
