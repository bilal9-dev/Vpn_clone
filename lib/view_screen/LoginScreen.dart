import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                // Logo
                Image.asset('assests/images/logo.png', height: 80), 
            
                SizedBox(height: 30),
            
                // Welcome Text
                Text(
                  "Hello Again!",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text("Welcome Back You’ve\nBeen Missed!",textAlign: TextAlign.center,style: TextStyle(
                  fontSize: 16
                ),),
            
                SizedBox(height: 20),
            
                // Username Field
                TextField(
                  decoration: InputDecoration(
            hintText: "User Name",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                ),
            
                SizedBox(height: 10),
            
                // Password Field
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
            hintText: "Password",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                ),
            
                SizedBox(height: 10),
            
                // Forgot Password
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(" Forget Your Password?",
                  style: TextStyle(
                    fontSize: 15
                  ),),
                ),
            
                SizedBox(height: 20),
            
                // Sign In Button
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xff185BFF),
            minimumSize: Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)
            )
                  ),
                  child: Text("Sign In", style: TextStyle(color: Colors.white)),
                ),
            
                SizedBox(height: 20),
            
                // Divider with "Or, Sign In With"
                Row(
                  children: [
            Expanded(child: Divider()),
            Text("  Or, Sign In With  ",style: TextStyle(
              color: Colors.grey[700]
            ),),
            Expanded(child: Divider()),
                  ],
                ),
            
                SizedBox(height: 20),
            
                // Google Sign In Button
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: FaIcon(FontAwesomeIcons.google,color: Color(0xff00091F),),
                  label: Text("Sign In With Google",style: TextStyle(
                    color: Color(0xff00091F),
                  ),),
                  style: OutlinedButton.styleFrom(
            minimumSize: Size(double.infinity, 50),
            backgroundColor: Color.fromARGB(255, 207, 209, 215),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)
            )
                  ),
                ),
            
                SizedBox(height: 99),
            
                // Sign Up Link
                Text.rich(
                  TextSpan(
            text: "Don't Have An Account? ",
            children: [
              TextSpan(
                text: "Sign Up",
                style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                   ),
                 ],
                ),
               ),
             ],
            ),
          ),
        ) 
      ),
    );
  }
}