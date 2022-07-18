import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/Todomodel.dart';
import 'Taskmodel.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'To Do App',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white70,
            ),
            onPressed: () {}),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Text(
            "02 : 36 PM",
            style: TextStyle(
                color: Colors.white70,
                fontSize: 45,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "current time",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        topLeft: Radius.circular(60)),
                    color: Colors.white),
                child: Consumer<TodoModel>(builder: (context, todo, child) {
                  return ListView.builder(
                      itemCount: todo.Tasklist.length,
                      itemBuilder: (context, index) {
                        return Container(
                          child: ListTile(
                            contentPadding: EdgeInsets.only(
                                left: 32, right: 32, top: 8, bottom: 8),
                            title: Text(
                              todo.Tasklist[index].title,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              todo.Tasklist[index].detail,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            trailing: Icon(
                              Icons.check_circle,
                              color: Colors.greenAccent,
                            ),
                          ),
                          margin:
                              EdgeInsets.only(bottom: 8, left: 16, right: 16),
                        );
                      });
                })),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Provider.of<TodoModel>(context).addTaskInlist();
          }),
    );
  }
}
