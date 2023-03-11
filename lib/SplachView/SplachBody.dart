
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Layout/Layout/layoutScreen.dart';
import '../shared/Component.dart';

class splashBody extends StatefulWidget {
  @override
  State<splashBody> createState() => _splashBodyState();
}

class _splashBodyState extends State<splashBody> with SingleTickerProviderStateMixin{
  AnimationController ?animationController;
  Animation<double> ?fadingAnimation;
  @override
  void initState() {
    super.initState();
    animationController=AnimationController(vsync: this,duration:Duration(seconds: 1));
    fadingAnimation =Tween<double>(begin: 0.2 ,end: 1).animate(animationController!);

    animationController?.repeat(reverse: true);
    goToNextPage();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FadeTransition(
                            
                            opacity: fadingAnimation!,
                            child: const Text('Notes',style: TextStyle(

                              color: Colors.amber,
                              fontSize:35,
                              fontWeight: FontWeight.bold,

                            ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                          const SizedBox(height: 40,),
                          Card(
                            elevation: 5,
                            child: Container(
                              color: Colors.amber,
                              width: double.infinity,
                              height:7,
                            ),
                          ),
                          const SizedBox(height: 10,),
                          Card(
                            elevation: 5,
                            child: Container(
                              color: Colors.amber,
                              width: double.infinity,
                              height:7,
                            ),
                          ),
                          const SizedBox(height: 10,),
                          Card(
                            elevation:5,
                            child: Container(
                              color: Colors.amber,
                              width: double.infinity,
                              height:7,
                            ),
                          ),
                          const SizedBox(height: 10,),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.only(bottom: 70,
                            start: 50
                        ),
                        child: Container(child: Icon(Icons.edit,size: 250,color: Colors.amberAccent,)),
                      )

                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


  void goToNextPage() {
    Future.delayed( const Duration(seconds: 3),
            (){
         MyNavigator(context,layoutScreen() );


        });
  }
}