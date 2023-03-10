
import 'package:flutter/material.dart';

class SplachView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
                          const Text('Notes',style: TextStyle(

                            color: Colors.amber,
                            fontSize:35,
                            fontWeight: FontWeight.bold,

                          ),
                            textAlign: TextAlign.right,
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
}