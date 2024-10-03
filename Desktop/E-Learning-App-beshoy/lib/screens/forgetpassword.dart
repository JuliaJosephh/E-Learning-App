import 'package:flutter/material.dart';
import 'package:sessiontask/constants/constants.dart';
import 'package:sessiontask/screens/verifywnum.dart';

class Forgetpassword extends StatelessWidget {
  const Forgetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          
          children: [
            const Text(
              "Forget Password",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              "Please enter your email address. You will receive a link to set a new password via email",
              maxLines: 2,
            ),
            const SizedBox(height: 40),

            // **Improved Row for Icon and TextField alignment**
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 1,),borderRadius: BorderRadius.circular(15)),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.email,
                      color: Colors.black, // Adjust color as needed
                    ),
                    SizedBox(width: 10.0), // Add some horizontal spacing
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Email",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          const SizedBox(height: 40,),
          ElevatedButton(onPressed: (){},style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll(backgroundColor)), child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text("Send code",style:poppins.copyWith(fontSize: 16,color: Colors.white),),
          ),),
          const SizedBox(height: 20,),
          Text("OR",textAlign: TextAlign.center,style: poppins.copyWith(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:100 ),
            child: InkWell(
              overlayColor: WidgetStateColor.transparent,
              onTap: (){
            
              Navigator.push(context, MaterialPageRoute(builder:(context)=>const Verifywnum() ));
            
            }, child: Text("Verify Using Number",textAlign: TextAlign.center,style: poppins.copyWith(color: backgroundColor,fontWeight: FontWeight.bold),)),
          )
         
          ],
          
        ),
      ),
    );
  }
}