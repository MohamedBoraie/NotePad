import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);
List<String> chat =['hi','hi','hi','hi','hi','hi','hi','hi','hi',];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff343641),
      appBar: AppBar(
        title: Text('ChatGpt',style: TextStyle(color: Colors.white),),
        backgroundColor: Color(0xff404150),
        elevation: 2,
      ),
      body: Column(
        children: [
          Expanded(child: ListView.separated(itemBuilder: (context, index)
        {

            if(index%2==0){
             return Padding(
               padding: const EdgeInsets.symmetric(horizontal: 15.0),
               child: ListTile(

                 title:  Text(chat[index],style: TextStyle(
                     color: Colors.white,fontSize: 30) ,),
                 leading: CircleAvatar(
                     radius: 20,
                     child: Icon(CupertinoIcons.person)),
               ),
             );
            }else{
              return   Container(
                color: Colors.grey.shade400,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: ListTile(
onTap: (){},
                    title:  Text(chat[index],style: TextStyle(
                        color: Colors.white,fontSize: 30) ,),
                    leading: CircleAvatar(
                        radius: 25,
                        child: Icon(CupertinoIcons.arrow_turn_up_right)),
                  ),
                ),
              );
            }
            }
          , separatorBuilder: (context, index) => SizedBox(height: 20,), itemCount: chat.length))
        ],
      ),
    );
  }
}
