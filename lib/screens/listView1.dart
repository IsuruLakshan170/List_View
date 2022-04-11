import 'package:flutter/material.dart';

class TestPaage extends StatefulWidget {
  const TestPaage({Key? key}) : super(key: key);

  @override
  State<TestPaage> createState() => _LoginPageState();

}
class _LoginPageState extends State<TestPaage> {
  var items = List<String>.generate(100, (index) => 'Item $index');
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text("List View Builder Random Generator"),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(items[index]),
              ),
            );
          },
        ));
  }
}

