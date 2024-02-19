import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Home Screen"),
        actions: [CircleAvatar(
          backgroundColor: Colors.amber,
          backgroundImage: NetworkImage( "https://images.pexels.com/photos/13009437/pexels-photo-13009437.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
          ),
         SizedBox(
          width :10,
        ),
      Icon( Icons.more_vert),
     ],
    
    ),
        
     body: Column(
           children:
           [
          Row(
            children: [
              Text(" Main accounts ",
              style: TextStyle(
                   fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                ) ,
              ),
           Icon(Icons.expand_more,), 
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Row(
            children: [
              Text(" 13.458\$",
              style: TextStyle(
                fontSize: 30,
              ),
              ),
            ],
          ),

          SizedBox(
            width:10,
          ),
          


        Row(
            children: [
              Text(" current balance",
              style: TextStyle(
                fontSize: 10,
              ),
              ),
              
            Icon(Icons.visibility,), 
            ],
          ),












         
        ],
          
               
         ),
      
     );
      
      
     
      
    
  }
}