import 'package:desktop_drop/desktop_drop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ffmpeg_tools/features/theme/theme_provider.dart';
import 'waiting_file.dart';
import 'gif_editor.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  dynamic selectedFile;

  void handleFileDropped(dynamic url) {
    setState(() {
      selectedFile = url.files.first; // Adjust as needed
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: Text(widget.title),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              child: Text('Settings'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Dark Mode', style: TextStyle(fontSize: 16)),
                Switch(
                  value: Provider.of<ThemeProvider>(context).isDarkMode(),
                  onChanged: (newValue) { 
                    // Add your onChanged code here!
                    Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
                  }
                ),
              ],
            )
            
          ],
        ),
      ),
      
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Container(
        padding: EdgeInsets.all(8),
        child: Center(
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Theme.of(context).colorScheme.primary,
                  width: 2,
                ),
              ),
              child: DropTarget(
                onDragDone: (url) {
                  // Handle the dropped files here
                  print('Dropped files: ${url.files.length}');
                },
                child: Center(
                  child:  Text(
                    'Drag & drop your files here',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
          ),
        ),
    );
  }
}
