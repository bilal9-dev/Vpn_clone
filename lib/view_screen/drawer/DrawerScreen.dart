
import 'package:flutter/material.dart';
import 'package:vpn_ui/view_screen/HomeScreen.dart';
import 'package:vpn_ui/view_screen/drawer/Accountpage.dart';
import 'package:vpn_ui/view_screen/drawer/SettingScreen.dart';

class Drawerscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Drawer'),
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 60), // Space for top margin
            CustomProfileCard(),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Main Menu",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            DrawerItem(icon: Icons.settings, text: "Setting",onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingsScreen()));
            },),
            DrawerItem(icon: Icons.person, text: "Account",onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>AccountSettingsPage()));
            },),
            DrawerItem(icon: Icons.visibility, text: "Show Log",onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ShowLogScreen()));
            },),
            DrawerItem(icon: Icons.report, text: "Report",onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ReportScreen()));
            },),
            DrawerItem(icon: Icons.help, text: "Help",onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HelpScreen()));
            },),
            DrawerItem(icon: Icons.logout, text: "Sign Out",onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
            },),
          ],
        ),
      ),
      body: Center(child: Text("Home Screen")),
    );
  }
}
class CustomProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(20), // Rounded shape for card
        ),
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), // Slightly rounded square
                image: DecorationImage(
                  image: AssetImage('assests/images/Frame 440.png'), // Your image
                  fit: BoxFit.cover, // Adjust image to fit properly
                ),
              ),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "User Name",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Disconnected",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 12,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
// Drawer Item Widget
class DrawerItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback? onTap; // Nullable onTap

  DrawerItem({required this.icon, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.black54),
      title: Text(text, style: TextStyle(fontSize: 16)),
      onTap: onTap ?? () {}, // Default empty function if null
    );
  }
}