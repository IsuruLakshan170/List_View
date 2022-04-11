import 'package:flutter/material.dart';
import 'package:list_view/service/services.dart';
import 'details.dart';

class TestPaage3 extends StatefulWidget {
  const TestPaage3({Key? key}) : super(key: key);

  @override
  State<TestPaage3> createState() => _LoginPageState();
}

class _LoginPageState extends State<TestPaage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View builder Random User"),
      ),
      body: FutureBuilder(
        future: getUsers(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: Text('Waiting'),
            );
          } else {
            if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            } else {
              return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      elevation: 5,
                      shadowColor: Colors.black,
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                              NetworkImage(snapshot.data[index].avatar),
                        ),
                        title: Text(snapshot.data[index].name),
                        subtitle: Text(snapshot.data[index].email),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  UserDetail(snapshot.data[index]),
                            ),
                          );
                        },
                      ),
                    );
                  });
            }
          }
        },
      ),
    );
  }
}
