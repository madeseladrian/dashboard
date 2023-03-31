import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'controllers/controllers.dart';
import 'pages/pages.dart';
import '../constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Alpha Admin Panel',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme
        ).apply(bodyColor: Colors.white),
        canvasColor: secondaryColor
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => MenuAppController())
        ],
        child: const DashboardPage(),
      ),
    );
  }
}