import 'package:flutter/material.dart';
import 'package:vpn_ui/view_screen/LoginScreen.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                    height: 10,
                  ),
                  Image.asset('assests/images/Illustration.png'),
                  SizedBox(height: 20,),
                  Text("Secure Browsing\nWith No Limits",textAlign: TextAlign.center,
                  style:TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                  ) 
                  ,),
                  SizedBox(height: 20,),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                  child:Text("With Our Encrypted VPN Tunnel, Your Data Stay Safe, Even Over Public Or Untrusted Internet Connections.",
                  textAlign: TextAlign.center,style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey[700]
                  ),
                  ) ,),
                  SizedBox(height: 40,),
                  Container(
                    height: 65,
                    width: 280,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xff185BFF),
                      
                    ),
                    child: TextButton(onPressed: (){}, child: Text("Create An Account",style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,fontWeight: FontWeight.w700
                    ),) ),
                  ),
                  SizedBox(height: 20,),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context)=>LoginScreen()));
                  }, child:Text("Sign In",style: TextStyle(
                    color: Color(0xff185BFF),
                  ),),
                   )
                  ],
                ),
                ),
            ),
          ),
    );
  }
}