import 'package:flutter/material.dart';

class TestPaage2 extends StatefulWidget {
  const TestPaage2({Key? key}) : super(key: key);

  @override
  State<TestPaage2> createState() => _LoginPageState();

}
class _LoginPageState extends State<TestPaage2> {
  var items = List<String>.generate(100, (index) => 'Item $index');
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text("List View"),
        ),
        body:Container(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              ListTile(
                leading: Icon(Icons.brightness_auto),
                title: Text("Bright ness"),
                subtitle: Text("change the brightness"),
                trailing: Icon(Icons.menu),
                onTap: (){},
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.image_aspect_ratio),
                title: Text("Keyboard"),
                subtitle: Text("change the keyboard"),
                trailing: Icon(Icons.menu),
                onTap: (){},
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.brightness_auto),
                title: Text("Auto"),
                subtitle: Text("Brightness auto"),
                trailing: Icon(Icons.menu),
                onTap: (){},
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.backspace_sharp),
                title: Text("Back"),
                subtitle: Text("change the navigation"),
                trailing: Icon(Icons.menu),
                onTap: (){},
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.baby_changing_station_outlined),
                title: Text("Activities"),
                subtitle: Text("change the activities"),
                trailing: Icon(Icons.menu),
                onTap: (){},
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.backup_outlined),
                title: Text("Upload"),
                subtitle: Text("change the upload"),
                trailing: Icon(Icons.menu),
                onTap: (){},
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.brightness_auto),
                title: Text("Bright ness"),
                subtitle: Text("change the auto"),
                trailing: Icon(Icons.menu),
                onTap: (){},
              ),





            ],
          ),

        ),
    );
  }
}

