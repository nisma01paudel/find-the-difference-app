import 'package:flutter/material.dart';

import 'homepage.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: const HomePage(),
    )
  );
}
