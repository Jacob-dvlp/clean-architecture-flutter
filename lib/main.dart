import 'package:clean_archecterter/src/layers/core/dependecies/posts/inject_dependence_posts.dart';
import 'package:flutter/cupertino.dart';

import 'app_home.dart';
import 'src/layers/core/dependecies/coments/inject_dependecie_comments.dart';

void main() {
  initInjectPost();
  initInjectComets();
  runApp(const AppHome());
}
