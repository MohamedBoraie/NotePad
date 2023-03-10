
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../shared/Component.dart';

class layoutScreen extends StatefulWidget{

  @override
  State<layoutScreen> createState() => _layoutScreenState();
}

class _layoutScreenState extends State<layoutScreen> {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
   return GestureDetector(
     onTap: (){
       FocusScope.of(context).unfocus();
     },
     child: Scaffold(
     floatingActionButton:FloatingActionButton(
       backgroundColor: const Color(0xffFEDE3F),
       onPressed: () {  },
       child: const Icon(Icons.add,color: Colors.black,size: 40,),
     ) ,
       body: Padding(
         padding: const EdgeInsets.all(20),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         const Padding(
           padding:  EdgeInsetsDirectional.only(top: 50
           ,
             bottom:   40       ),
           child: Text('NotePad',style: TextStyle(
             fontWeight: FontWeight.bold,
             fontSize: 40,
           ),),
         ),
         MyTextFormField(
           label: 'Search Notes',
           prefixIcon:Icons.search,
           keyboardType: TextInputType.text,
           borderRadius: 30,
           maxHeight: 50,


         ),
         const SizedBox(height: 40,),
         Column(
           children: [
             Container(
child: Column(
  children: [
    Text('Todayes grocery list',style: TextStyle(fontSize: 20),)
  ],

),
                 height: size.height/9,
                 width: double.infinity,
                 decoration: BoxDecoration(
                   color:const Color(0xff82FFB0),
                     
                   borderRadius: BorderRadius.circular(15),
border: Border.all(color:const Color(0xff82FFB0)),

                 ),
               clipBehavior: Clip.hardEdge,
             ),
             const SizedBox(height: 15,),
             Container(
                 clipBehavior:Clip.antiAliasWithSaveLayer,
               height: size.height/9,
decoration: BoxDecoration(

  color:const Color(0xff82FFB0),

  borderRadius: BorderRadius.circular(15),


)
),


           ],
         ),
       ],
         ),
       ),
     ),
   );
  }
}
