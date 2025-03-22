import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final List<Map<String, dynamic>> settingsOptions = [
    {'title': 'Quick Connect', 'subtitle':' quick connect button connects you to selected server.', 'value': false},
    {'title': 'VPN Accelerator', 'subtitle': 'vpn accelerator enables a set unique performance enhancing \ntechnologies which can increase VPN speed up to 400%. ', 'value': false},
    {'title': 'VPN Notifications', 'subtitle': 'get notified when vpn accelerator eswitches you to a faster server. ', 'value': false},
    {'title': 'Split Tunneling', 'subtitle': 'allows certain apps or IPs to be excluded from the vpn traffic.', 'value': false},
    {'title': 'NetShield', 'subtitle': 'Block ads, trackers & malware', 'value': false},
    {'title': 'Kill Switch', 'subtitle': 'set uo how VPN behaves if your connection is disrupted.', 'value': false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: ListView.builder(
        itemCount: settingsOptions.length,
        itemBuilder: (context, index) {
          return SwitchListTile(
            title: Text(settingsOptions[index]['title']),
            subtitle: Text(settingsOptions[index]['subtitle']),
            value: settingsOptions[index]['value'],
            activeColor: Color(0xff185BFF),
            onChanged: (value) {
              setState(() {
                settingsOptions[index]['value'] = value;
              });
            },
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.public), label: 'Countries'),
          BottomNavigationBarItem(icon: Icon(Icons.wifi_off), label: 'Disconnect'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
        ],
      ),
    );
  }
}


class ShowLogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Show Log'),
      ),
      body: Center(
        child: Text('Log Details'),
      ),
    );
  }
}

class ReportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Report'),
      ),
      body: Center(
        child: Text('Report an Issue'),
      ),
    );
  }
}

class HelpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help'),
      ),
      body: Center(
        child: Text('Help & Support'),
      ),
    );
  }
}
