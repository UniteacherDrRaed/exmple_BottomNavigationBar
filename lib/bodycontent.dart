import 'package:flutter/material.dart';
TextEditingController t1=TextEditingController();
TextEditingController t2=TextEditingController();
TextEditingController t3=TextEditingController();
String _contextOfText="";
Widget getWidget(BuildContext context,int i){
  if (i==0)
   {
     return Container(
      margin:const EdgeInsets.all(24),
      color: Colors.blue,
       height: 275,
       width: 350,
       child:Column(
         children:[ TextField(
          
          controller: t1,
          
         ),
         ElevatedButton(onPressed: ()
         {
          ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(
            content: Text(t1.text),
          backgroundColor: Colors.blue,));
         }, 
         child: const Text("click here"))
        ]
       ),
       );
     
   }
  else if(i==1)
 {
   return Container(
    margin:const EdgeInsets.all(24),
    color: Colors.yellow,
    height: 275,
    child:Column(
         children:[ TextField(
          
          controller: t2,
          
         ),
         ElevatedButton(onPressed: ()
         {
          ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(
            content: Text(t2.text),
          backgroundColor: Colors.yellow,));
         }, 
         child: const Text("click here"))
        ]
       ),
      );
 }

else{
  return Container(
    margin:const EdgeInsets.all(24),
    color: Colors.green,
    height: 275,
    child:Column(
         children:[ TextField(
          
          controller: t3,
          
         ),
         ElevatedButton(onPressed: ()
         {
          ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(
            content: Text(t3.text),
          backgroundColor: Colors.green,));
         }, 
         child: const Text("click here"))
        ]
       ),
      );
}
}