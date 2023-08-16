import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';


class OTP extends StatefulWidget {
  const OTP({super.key});

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.white,
    body: SafeArea(child: Padding(padding: EdgeInsets.symmetric(vertical: 25,horizontal: 25),
    child: Column(
      children: [ 
        Row(mainAxisAlignment: MainAxisAlignment.start,
          children: [
        GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back,
          ),
        ),
        ],),  
        Align(alignment: Alignment.center,), 
       Container(
        height: 250,
        width: 250,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(120),color: Colors.yellow),
        child: Image.asset("assets/illustration-2.png",width: 240,)),
       SizedBox(height: 5,), 
       Text("Registration",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
       SizedBox(height: 5,),
       Text("Add your phone number and will send verification code to your mobile",style: TextStyle(fontSize: 18,color: Colors.black),textAlign: TextAlign.center,),
       SizedBox(height: 45,),
       Container(
       padding: EdgeInsets.all(9),
       height: 80,
        width: 300,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.yellow),
        child: 
        Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(30),
                ),
                  focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(30),
                ),
                prefix: 
                Text("Mobile Number",style: TextStyle(fontSize: 15),),
                suffixIcon: Icon(Icons.check_circle,color: Colors.green,size: 30,),
              ),
            ),
          ],
        ),
       ),
       SizedBox(height: 25,),
      SizedBox(width: 200,
      child: ElevatedButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> OTPLOGIN()));
      },
       style: ButtonStyle(
        shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)))
       ), 
       child: Padding(padding: EdgeInsets.all(14),
       child: Text("Send OTP",style: TextStyle(fontSize: 20,),),
       ),
       ),),
     
      ],),
    ),
    ),
    );
  }

}




class OTPLOGIN extends StatefulWidget {
  const OTPLOGIN({super.key});

  @override
  State<OTPLOGIN> createState() => _OTPLOGINState();
}

class _OTPLOGINState extends State<OTPLOGIN> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.white,
    body: SafeArea(child: Padding(padding: EdgeInsets.symmetric(vertical: 25,horizontal: 25),
    child: Column(
      children: [ 
        Row(mainAxisAlignment: MainAxisAlignment.start,
          children: [
        GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back,
          ),
        ),
        ],),  
        Align(alignment: Alignment.center,), 
       Container(
        height: 250,
        width: 260,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(125),color: Colors.pink),
        child: Image.asset("assets/illustration-3.png",width: 240,)),
       SizedBox(height: 5,), 
       Text("Verification",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
       SizedBox(height: 5,),
       Text("Enter your code number",style: TextStyle(fontSize: 18,color: Colors.black),textAlign: TextAlign.center,),
       SizedBox(height: 45,),
       Container(
       padding: EdgeInsets.all(9),
       height: 200,
        width: 300,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.teal),
        child: 
        Column(
          children: [
           
       SizedBox(height: 100,),
      SizedBox(width: 200,
      child: ElevatedButton(onPressed: (){
        
      },
       style: ButtonStyle(
        shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)))
       ), 
       child: Padding(padding: EdgeInsets.all(14),
       child: Text("Verify",style: TextStyle(fontSize: 20,),),
       ),
       ),),
       SizedBox(height: 25),
       ],),
       ),
      ],),
    ),
    ),
    );
  }

  
}