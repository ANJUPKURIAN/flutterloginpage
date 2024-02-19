import 'package:flutter/material.dart';
import 'package:flutterloginpage/view/home_screen.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController=TextEditingController();
    TextEditingController passwordController=TextEditingController();
    var formKey= GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar( 
        title: Text(" Login Page"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Form(
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
                      enabled: true, // if enabled if false ,textfield is invisible .and if become visible when we pass a data through button
                      cursorColor: Colors.green, // color of cursor
                      controller: usernameController,
                      decoration:InputDecoration(
                        hintText: " User name",
                        labelText: "User name",
                        border:OutlineInputBorder(borderRadius: BorderRadius.circular(20)), // border for textfield with curves on both end
                      ),

                      validator:(value) {
                        print(value);
                    
                        if(usernameController.text.isEmpty)
                        {
                          return " the field is empty";
                        }
                        else
                        {
                          return null;
                    
                        }
                        // if(value !=null && value.isNotEmpty) // this is for textfield with value
                        // {
                        //   return  null;
                        // }
                        // else
                        // {
                        //   return " the field is empty";
                        // }
                      },
                      
                      ),

                    SizedBox(  /// for gap between two textfields
                      height: 20,
                    ),



                   TextFormField(
                      enabled: true, // if enabled if false ,textfield is invisible .and if become visible when we pass a data through button
                      cursorColor: Colors.green, // color of cursor
                      controller: passwordController,
                      decoration:InputDecoration(
                        hintText: " Password",
                        labelText: "Password",
                        border:OutlineInputBorder(borderRadius: BorderRadius.circular(20)), // border for textfield with curves on both end
                      ),

                      validator:(value) {
                        print(value);
                    
                        if(passwordController.text.isEmpty)
                        {
                          return " the field should contain more than 7 characters";
                        }
                        else
                        {
                          return null;
                    
                        }
                        
                      },
                      
                    ),



                  ],
                ),
              ),

              ElevatedButton(onPressed: (){
                if(formKey.currentState!.validate()==true)
                {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>HomeScreen()));
                }
              //print(usernameController.text);// taking printed data stored inside namecontroller as form of text.
              },
               child: Text("print data"))
            ],
          ),
        ),
    );
  }
}