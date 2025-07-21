import 'package:pin_code_fields/pin_code_fields.dart';

import 'package:flutter/material.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  String deepu ="abc";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Container(
                  width: 200,
                  height: 170,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/splashimg.png"))
                  ),
                ),
              ),
              
            ),
            Column(
              children: [
                Container(
                  child: Text("OTP Verification",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                  
                ),
                SizedBox(height: 12),
                Container(
                  child: Text("OTP sent to your ",style: TextStyle(color: const Color.fromARGB(255, 87, 82, 82),fontSize: 20)),
                  
                ),
                Container(
                  child: Text("E-mail",style: TextStyle(color: const Color.fromARGB(255, 87, 82, 82),fontSize: 20)),
                  
                ),
              ],
            ),
            
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: PinCodeTextField(appContext: context, length: 4,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(10),
                fieldHeight: 60,
                fieldWidth: 60,
                activeFillColor: Colors.black
              ),
              ),
            ),
         
           
            SizedBox(height: 45,),
            Container(
              width: 350,
              height: 55,
              child: ElevatedButton(
                
                style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 7, 47, 79),shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                )),
                onPressed: (){

                  
                }, child: Text("Get OTP",style: TextStyle(color: Colors.white,fontSize: 20))),
            ),
        
            Container(
              child: TextButton(onPressed: (){}, child: Text("Already have an account? Login")),
            )
          ],
          
        ),
      ),
    );
  }
}