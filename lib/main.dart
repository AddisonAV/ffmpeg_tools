import 'package:flutter/material.dart';
import 'package:ffmpeg_tools/features/theme/theme_provider.dart';
import 'package:provider/provider.dart';
import 'features/home/home_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove the debug banner
      title: 'FFmpeg tools',     
      home: HomePage(title: 'FFmpeg tools'), // Set the home page to MyHomePage
      theme: Provider.of<ThemeProvider>(context).themeData, // Use the theme from ThemeProvider
    );
  }
}