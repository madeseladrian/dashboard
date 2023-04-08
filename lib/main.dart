import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'controllers/controllers.dart';
import 'pages/pages.dart';
import '../constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyCw3cf2LnEKn-kLngQU6BrSzeTb_gwIqDI",
      projectId: "alfa-dashboard",
      messagingSenderId: "43746613648",
      appId: "1:43746613648:web:2778c7022c34e7d9d9bb15",
    )
  );
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