import 'package:flutter/material.dart';
import 'package:flutter_apperentice_book/03_basic_widgets/fooderlich_home.dart';

import 'fooderlich_theme.dart';

class Fooderlich extends StatelessWidget {
  // 2
  const Fooderlich({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = FooderlichTheme.dark();
    // 3
    return MaterialApp(
      // TODO: Add theme
      theme: theme,
      title: 'Fooderlich',
      // 4
      home: const FooderlichHome(),
    );
  }
}
