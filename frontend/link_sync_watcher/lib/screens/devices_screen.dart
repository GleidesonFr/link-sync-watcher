import 'package:flutter/material.dart';
import 'package:link_sync_watcher/models/device.dart';
import 'package:link_sync_watcher/screens/downloads_screen.dart';
import 'package:link_sync_watcher/widgets/device_card.dart';

class DevicesScreen extends StatelessWidget {
  const DevicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final devices = [
      Device(id: "1", name: "PC-Gleideson", status: "Online"),
      Device(id: "2", name: "Notebook-Casa", status: "Online"),
      Device(id: "3", name: "PC-Trabalho", status: "Offline"),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Dispositivos')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: devices.length,
        itemBuilder: (context, index) {
          final device = devices[index];

          return DeviceCard(
            device: device,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const DownloadsScreen()),
              );
            },
          );
        },
      ),
    );
  }
}
