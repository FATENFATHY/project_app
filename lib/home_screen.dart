import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  List<int> i = [
    3,
    5,
    4,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.blue,
        leading: Icon(Icons.home),
        title: Text('FirstApp',),
        actions:
        [
          IconButton(onPressed:(){}, icon :Icon(Icons.notification_important,),),
          IconButton(onPressed:(){}, icon :Icon(Icons.search,),),
        ],
    ),
        body:SingleChildScrollView(
            scrollDirection: Axis.horizontal,
          //child:Container(
        // width: double.infinity,
            child: Column(
             // crossAxisAlignment: CrossAxisAlignment.start,
              children:[
               Padding(
                 padding: const EdgeInsets.all(50.0),
                 child: Container(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius. circular(20.0,)
                   ),
                   clipBehavior:  Clip. antiAliasWithSaveLayer,
                   child: Stack(
                     alignment:Alignment.bottomCenter ,
                    children: [
                      Image(image:NetworkImage(
                          'https://images.unsplash.com/photo-1637858868799-7f26a0640eb6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGNhcnRvb258ZW58MHx8MHx8&w=405&q=80'
                          ) ,
                      height:200.0,
                        width: 200.0,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        color: Colors.orange.shade300.withOpacity(.10),
                        padding: const EdgeInsets. symmetric(
                          vertical: 10.0,
                          horizontal:0,
                        ),
                        child: Text('CARTTON',
                          textAlign: TextAlign.center,
                          style:TextStyle(
                            fontSize:20.0,
                            color: Colors.black

                          ) ,
                        ),
                      ),
                    ],
              ),
                 ),
               ),
            ],
            ),
          ),
      //  ),


    );

  }

  // when notification icon button clicked
void onNotification(){
    print('notification clicked');
}
}
