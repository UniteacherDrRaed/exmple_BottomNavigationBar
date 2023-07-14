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
          _contextOfText=t1.text;
         }, 
         child: Text("click here"))
         ,
         Text(t1.text)]
       ),
       );
     
   }
  else if(i==1)
 {
   return Container(
    margin:const EdgeInsets.all(24),
    color: Colors.yellow,
    height: 275,);
 }

else{
  return Container(
    margin:const EdgeInsets.all(24),
    color: Colors.green,
    height: 275,);
}
}