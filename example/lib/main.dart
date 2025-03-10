import 'package:flutter/material.dart';
import 'package:app_settings_plus/app_settings_plus.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> getOpenAppSettingsActions() {
    return [
      ListTile(
        title: const Text('Wifi'),
        minVerticalPadding: 5.0,
        onTap: () => AppSettingsPlus.openAppSettings(type: AppSettingsType.wifi),
      ),
      ListTile(
        title: const Text("Location"),
        onTap: () => AppSettingsPlus.openAppSettings(type: AppSettingsType.location),
      ),
      ListTile(
        title: const Text("Security"),
        onTap: () => AppSettingsPlus.openAppSettings(type: AppSettingsType.security),
      ),
      ListTile(
        title: const Text("Lock & Password"),
        onTap: () => AppSettingsPlus.openAppSettings(type: AppSettingsType.lockAndPassword),
      ),
      ListTile(
        title: const Text("App Settings"),
        onTap: () => AppSettingsPlus.openAppSettings(type: AppSettingsType.settings),
      ),
      ListTile(
        title: const Text("Bluetooth"),
        onTap: () => AppSettingsPlus.openAppSettings(type: AppSettingsType.bluetooth),
      ),
      ListTile(
        title: const Text("Data Roaming"),
        onTap: () => AppSettingsPlus.openAppSettings(type: AppSettingsType.dataRoaming),
      ),
      ListTile(
        title: const Text("Date"),
        onTap: () => AppSettingsPlus.openAppSettings(type: AppSettingsType.date),
      ),
      ListTile(
        title: const Text("Display"),
        onTap: () => AppSettingsPlus.openAppSettings(type: AppSettingsType.display),
      ),
      ListTile(
        title: const Text("Notification"),
        onTap: () => AppSettingsPlus.openAppSettings(type: AppSettingsType.notification),
      ),
      ListTile(
        title: const Text("Sound"),
        onTap: () => AppSettingsPlus.openAppSettings(type: AppSettingsType.sound),
      ),
      ListTile(
        title: const Text("Internal Storage"),
        onTap: () => AppSettingsPlus.openAppSettings(type: AppSettingsType.internalStorage),
      ),
      ListTile(
        title: const Text("Battery optimization"),
        onTap: () => AppSettingsPlus.openAppSettings(type: AppSettingsType.batteryOptimization),
      ),
      ListTile(
        title: const Text("NFC"),
        onTap: () => AppSettingsPlus.openAppSettings(type: AppSettingsType.nfc),
      ),
      ListTile(
        title: const Text("VPN"),
        onTap: () => AppSettingsPlus.openAppSettings(type: AppSettingsType.vpn, asAnotherTask: true),
      ),
      ListTile(
        title: const Text("Device Settings"),
        onTap: () => AppSettingsPlus.openAppSettings(type: AppSettingsType.device, asAnotherTask: true),
      ),
      ListTile(
        title: const Text("Accessibility"),
        onTap: () => AppSettingsPlus.openAppSettings(type: AppSettingsType.accessibility, asAnotherTask: true),
      ),
      ListTile(
        title: const Text("Developer"),
        onTap: () => AppSettingsPlus.openAppSettings(type: AppSettingsType.developer, asAnotherTask: true),
      ),
      ListTile(
        title: const Text("Hotspot"),
        onTap: () => AppSettingsPlus.openAppSettings(type: AppSettingsType.hotspot, asAnotherTask: true),
      ),
      ListTile(
        title: const Text("APN"),
        onTap: () => AppSettingsPlus.openAppSettings(type: AppSettingsType.apn, asAnotherTask: true),
      ),
      ListTile(
        title: const Text("Alarms"),
        onTap: () => AppSettingsPlus.openAppSettings(type: AppSettingsType.alarm, asAnotherTask: true),
      ),
      ListTile(
        title: const Text("Subscriptions"),
        onTap: () => AppSettingsPlus.openAppSettings(type: AppSettingsType.subscriptions, asAnotherTask: true),
      ),
    ];
  }

  List<Widget> getOpenAppSettingsPanelActions() {
    return [
      ListTile(
        title: const Text('Wifi'),
        minVerticalPadding: 5.0,
        onTap: () => AppSettingsPlus.openAppSettingsPanel(AppSettingsPanelType.wifi),
      ),
      ListTile(
        title: const Text('NFC'),
        onTap: () => AppSettingsPlus.openAppSettingsPanel(AppSettingsPanelType.nfc),
      ),
      ListTile(
        title: const Text('Internet connectivity'),
        onTap: () => AppSettingsPlus.openAppSettingsPanel(AppSettingsPanelType.internetConnectivity),
      ),
      ListTile(
        title: const Text('Volume'),
        onTap: () => AppSettingsPlus.openAppSettingsPanel(AppSettingsPanelType.volume),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final appSettingsActions = getOpenAppSettingsActions();
    final appSettingsPanelActions = getOpenAppSettingsPanelActions();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App Settings Example App'),
        ),
        body: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'openAppSettings() options',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate.fixed(appSettingsActions),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'openAppSettingsPanel() options',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate.fixed(appSettingsPanelActions),
            ),
          ],
        ),
      ),
    );
  }
}
