import 'package:flutter/material.dart';
import 'package:link_sync_watcher/screens/devices_screen.dart';

void main() {
  runApp(const LinkSyncWatcherApp());
}

class LinkSyncWatcherApp extends StatelessWidget {
  const LinkSyncWatcherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Link Sync Watcher',
      debugShowCheckedModeBanner: false,
      home: const DevicesScreen(),
    );
  }
}
