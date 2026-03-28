import 'package:flutter/material.dart';
import 'package:link_sync_watcher/models/download.dart';
import 'package:link_sync_watcher/widgets/download_card.dart';

class DownloadsScreen extends StatelessWidget {
  const DownloadsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final downloads = [
      Download(fileName: "ubuntu.iso", progress: 0.7),
      Download(fileName: "node.zip", progress: 1.0),
      Download(fileName: "video.mp4", progress: 0.3),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Downloads')),

      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: downloads.length,
        itemBuilder: (context, index) {
          final download = downloads[index];

          return DownloadCard(download: download);
        },
      ),
    );
  }
}
