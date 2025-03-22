import 'package:flutter/material.dart';

class AccountSettingsPage extends StatefulWidget {
  @override
  _AccountSettingsPageState createState() => _AccountSettingsPageState();
}

class _AccountSettingsPageState extends State<AccountSettingsPage> {
  bool emailNotifications = false;
  bool twoFactorAuth = false;
  bool acceptTerms = false;

  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController rePasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Account Settings")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Personal Information", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            TextField(
              controller: fullNameController,
              decoration: InputDecoration(border: OutlineInputBorder(), labelText: "Full Name"),
            ),
            SizedBox(height: 10),
            TextField(
              controller: emailController,
              decoration: InputDecoration(border: OutlineInputBorder(), labelText: "Email"),
            ),
            SizedBox(height: 10),
            TextField(
              controller: phoneController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(border: OutlineInputBorder(), labelText: "Phone Number"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  fullNameController.clear();
                  emailController.clear();
                  phoneController.clear();
                });
              },
              child: Text("Save Personal Info"),
            ),
            Divider(),
            Text("Change Password", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            TextField(
              controller: newPasswordController,
              obscureText: true,
              decoration: InputDecoration(border: OutlineInputBorder(), labelText: "New Password"),
            ),
            SizedBox(height: 10),
            TextField(
              controller: rePasswordController,
              obscureText: true,
              decoration: InputDecoration(border: OutlineInputBorder(), labelText: "Re-enter Password"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  newPasswordController.clear();
                  rePasswordController.clear();
                });
              },
              child: Text("Change Password"),
            ),
            Divider(),
            CheckboxListTile(
              title: Text("Receive Email Notifications"),
              value: emailNotifications,
              onChanged: (value) {
                setState(() {
                  emailNotifications = value!;
                });
              },
            ),
            SwitchListTile(
              title: Text("Enable Two-Factor Authentication"),
              value: twoFactorAuth,
              activeColor: Color(0xff185BFF),
              onChanged: (value) {
                setState(() {
                  twoFactorAuth = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
