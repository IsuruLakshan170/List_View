import 'package:flutter/material.dart';
import 'package:list_view/screens/tabBar.dart';
import 'listView1.dart';
import 'listView2.dart';
import 'listView3.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _LoginPageState();

}
class _LoginPageState extends State<MainPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
        PreferredSize(
        preferredSize: Size.fromHeight(60.0),
    child:AppBar(
        title: Center(child:
        Text("List View and Builder")),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Tabs()),
            );
          },
        ),
      automaticallyImplyLeading: false, // hides leading widget

        actions: [
          IconButton(onPressed: (){},
              icon: Icon(Icons.search),
          ),
          IconButton(onPressed: (){},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
        ),
      body:Container(
        margin:  EdgeInsets.symmetric(horizontal: 20),
        child: Column(
            children: [
              Row(
               children: [
                 Column(
                   children: [
                     SizedBox(height: 20),
                     Text(
                       'List View',
                       textAlign: TextAlign.left,
                       overflow: TextOverflow.ellipsis,
                       style: const TextStyle(fontWeight: FontWeight.bold),
                     ),
                     RaisedButton(
                       color: Colors.blueAccent, // background
                       textColor: Colors.white, // foreground
                       onPressed: () {
                         Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => const TestPaage2()),
                         );
                       },
                       child: Text('List View 1'),
                     ), ],
                 ),

               ],
              ),
              SizedBox(height: 40),
              Row(
                children: [
                  Column(
                    children: [
                      Text(
                        'List View bulder',
                        textAlign: TextAlign.left,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          RaisedButton(
                            color: Colors.blueAccent, // background
                            textColor: Colors.white, // foreground
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const TestPaage()),
                              );
                            },
                            child: Text('List View 2'),
                          ),
                          SizedBox(width: 10),
                          RaisedButton(
                            color: Colors.blueAccent, // background
                            textColor: Colors.white, // foreground
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const TestPaage3()),
                              );
                            },
                            child: Text('List View 3'),
                          )
                        ],
                      ),

                    ],
                  ),

                  SizedBox(width: 10),


                ],
              ),
            ],
        ),
      )
    );
  }
}