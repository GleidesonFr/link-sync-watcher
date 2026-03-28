import 'package:flutter/material.dart';
import 'package:link_sync_watcher/models/device.dart';

class DeviceCard extends StatelessWidget {
  final Device device;
  final VoidCallback onTap;

  const DeviceCard({super.key, required this.device, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        title: Text(device.name),
        subtitle: Text(
        device.status,
        style: TextStyle(
          color: device.status == 'Online' ?
            Colors.green :
            Colors.red,
        ),
        ),
        onTap: onTap,
      ),
    );
  }
}
