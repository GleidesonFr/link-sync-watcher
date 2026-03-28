import 'package:flutter/material.dart';
import 'package:link_sync_watcher/models/download.dart';

class DownloadCard extends StatelessWidget {
  final Download download;

  const DownloadCard({super.key, required this.download});

  @override
  Widget build(BuildContext context) {
    final progressPercent = (download.progress * 100).toInt();

    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text(
              download.fileName,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            LinearProgressIndicator(
              value: download.progress,
            ),

            const SizedBox(height: 6),

            Text("$progressPercent%"),
          ],
        ),
      ),
    );
  }
}
