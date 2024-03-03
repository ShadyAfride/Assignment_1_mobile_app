import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List listOfItems = [1, 2, 3, 4];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("First Step"),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: listOfItems.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 3,
              color: Colors.white12,
              child: Center(
                  child: Text(
                      listOfItems[index].toString(),
                      style: TextStyle(fontSize: 10)
                  )),
            );
          },
        ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState((){
            listOfItems.add(listOfItems.length+1);
          });

        },
        child: Icon(Icons.add),
      ),

    );
  }
}
