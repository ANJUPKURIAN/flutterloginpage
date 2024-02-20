import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
   List<Map>mylist = [
    {
      "name" :"NIKE SHOP",
      "date" :"17 oct",
      "price" :"-62.94",
      "image": "assets/nikeshop.jpeg",
    },

     {
      "name" :"STARBUCKS",
      "date" :"17 oct",
      "price" :"-6.00",
      "image" : "assets/starbucks.jpeg ",
      
     },

    {
      "name" :"Anna Johnson",
      "date" :"17 oct",
      "price" :"50.00",
      "image" :"assets/annajohnson.jpeg ",
    },

    {
      "name" :"From SAVINGS",
      "date" :"17 oct",
      "price" :"25.00",
      "image": "assets/fromsavings.jpeg",
  },
  ];

List<Map>myList2 = [

  {
      "name" :"McDonald's",
      "date" :"17 oct",
      "price" :"-12.37",
      "image" : "assets/mcdonalds.jpeg ",
  },

    {
      "name" :"NIKE SHOP",
      "date" :"17 oct",
      "price" :"-62.94",
      "image" :"assets/nikeshop.jpeg",
    },
];


 return Scaffold(
      appBar: AppBar(
        title: Text(" Home Screen",
        style: TextStyle(
          fontWeight: FontWeight.bold),
          ),
        actions: [
         CircleAvatar(
          child: Image.asset("assets/image.jpg.jpeg"),
         ),
         SizedBox(
          width: 20,
         ),
         Icon(Icons.list),
         SizedBox(
          width: 20,
         ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          physics: ScrollPhysics(),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(" Main Account"),
                  Icon(Icons.arrow_drop_up_sharp),

                ],
              ),

              Text("13.458\$",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25),
                ),

              SizedBox(
                width: 5,
              ),

             Row(
              children: [
                Icon(Icons.remove_red_eye_outlined),
                SizedBox(width: 5),
                  Text(" Current balance"),
                

              ],
             ),
            
            SizedBox(
              height: 10,
            ),

            Row(
              children: [
                ElevatedButton(onPressed: (){}, child: Icon(Icons.add),)
              ],
            ),

            SizedBox(
              width: 10,
            ),
            Row(
              children: [
               ElevatedButton(onPressed: (){}, 
               child:Icon(Icons.add),
               style: ButtonStyle(
                padding: MaterialStatePropertyAll
                (
                  EdgeInsets.symmetric(horizontal: 15,vertical: 15)
                ),
                backgroundColor: MaterialStatePropertyAll(
                  Colors.purple.shade100),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                      )
                      )
               ),
               ),



              SizedBox(
              width: 10,
               ),


                ElevatedButton(onPressed: (){}, 
               child:Icon(Icons.arrow_forward_outlined),
               style: ButtonStyle(
                padding: MaterialStatePropertyAll
                (
                  EdgeInsets.symmetric(horizontal: 15,vertical: 15)
                ),
                backgroundColor: MaterialStatePropertyAll(
                  Colors.purple.shade100),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                      )
                      )
               ),
               ),


              SizedBox(
              width: 10,
               ),

               Expanded(child: 
               ElevatedButton(onPressed: (){},
                child: Text(" Split Purchase",
                style: TextStyle(
                  fontSize: 15),
                  ),
                  style: ButtonStyle(
                    padding: MaterialStatePropertyAll(
                      EdgeInsets.symmetric(
                        horizontal: 45,
                        vertical: 15,
                      )
                    ),

                   backgroundColor: MaterialStatePropertyAll(Colors.purple.shade100),
                   shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius:BorderRadius.circular(8)
                       )
                   ),
                  ),

               ),
               ),
              ],

            ),

            SizedBox(
              height: 10,
            ),

            Text(" Recent Events"),

            SizedBox(
              height: 10,
            ),

            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount : mylist.length,
              itemBuilder: (context,index)
               {
                return ListTile(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 45),
                    leading: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(mylist[index][" image"]
                        )
                        )
                    ),
                    height:50 ,
                    width: 50,

                  ),

                  title: Text(mylist[index]["name"]),
                  subtitle: Text(mylist[index]["date"]),
                  trailing: index<2
                  ? Text("${mylist[index]["price"]}  \$",
                  style: TextStyle(
                    fontSize: 10
                  )
                  )
                  :TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Colors.purple.shade50,
                      )
                    ),
                    
                    onPressed: (){},
                     child: Text("${mylist[index]["price"]} \$",
                     style: TextStyle(fontSize: 15),
                     )
                     ),


                  shape:BeveledRectangleBorder(
                    side: BorderSide(
                      width: 0.5,
                    color:Colors.black26)
                ),
                );
               },
               separatorBuilder:(context, index) 
               {
                return SizedBox(height: 10);
                 
               },
            
            ),
          
        
        ],
        ),

         
       SizedBox(height: 10),
        Text("Recent events"),
        SizedBox(height: 10),
        ListView.separated(
          shrinkWrap: true,
           physics: NeverScrollableScrollPhysics(),
              itemCount : mylist.length,
              itemBuilder: (context,index)
               {
                return ListTile(
          
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 45),
                    leading: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(mylist[index][" image"]
                        )
                        )
                    ),
                    height:50 ,
                    width: 50,

                  ),

              title: Text(mylist[index]["name"]),
                  subtitle: Text(mylist[index]["date"]),
                  trailing: index<2
                  ? Text("${mylist[index]["price"]}  \$",
                  style: TextStyle(
                    fontSize: 10
                  )
                  )
                  :TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Colors.purple.shade50,
                      )
                    ),
                    
                    onPressed: (){},
                     child: Text("${mylist[index]["price"]} \$",
                     style: TextStyle(fontSize: 15),
                     )
                     ),

                shape:BeveledRectangleBorder(
                    side: BorderSide(
                      width: 0.5,
                    color:Colors.black26)
                ),
                );
               },
               separatorBuilder:(context, index) 
               {
                return SizedBox(height: 10);
                 
               },
        ),



         SizedBox(height: 10),
        Text("Recent events"),
        SizedBox(height: 10),
        ListView.separated(
          shrinkWrap: true,
           physics: NeverScrollableScrollPhysics(),
              itemCount : myList2.length,
              itemBuilder: (context,index)
               {
                return ListTile(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 45),
                    leading: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(myList2[index][" image"]
                        )
                        )
                    ),
                    height:50 ,
                    width: 50,

                  ),


          title: Text(myList2[index]["name"]),
                  subtitle: Text(myList2[index]["date"]),
                  trailing: index<2
                  ? Text("${myList2[index]["price"]}  \$",
                  style: TextStyle(
                    fontSize: 10
                  )
                  )
                  :TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Colors.purple.shade50,
                      )
                    ),
                    
                    onPressed: (){},
                     child: Text("${myList2[index]["price"]} \$",
                     style: TextStyle(fontSize: 15),
                     )
                     ),

                shape:BeveledRectangleBorder(
                    side: BorderSide(
                      width: 0.5,
                    color:Colors.black26)
                ),
                );
               },
               separatorBuilder:(context, index) 
               {
                return SizedBox(height: 10);
                 
               },
        ),
      
        
      ),
 
 ),

   bottomNavigationBar:BottomNavigationBar
   (
  items: [
    BottomNavigationBarItem(icon:Icon(
      Icons.home),label: " "),

    BottomNavigationBarItem(icon:Icon(
      Icons.comment),label: " "),

    BottomNavigationBarItem(icon:Icon(
      Icons.notifications_none_outlined),label: " "),

    BottomNavigationBarItem(icon:Icon(
      Icons.pie_chart),label: " "),
],

  type: BottomNavigationBarType.fixed,
   showSelectedLabels: false,
  showUnselectedLabels: false,
  elevation: 20,
  ),
  
 );
  }
}

 









        
                
              












                
        



















             
        
         
          
        
      
    
      

          

    












         
                
            
    