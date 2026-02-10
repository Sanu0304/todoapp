
import 'package:flutter/material.dart';
import 'package:todoapp/utils/todolist.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  final _controller = TextEditingController();


  List toDoList = [];


  void checkBoxChanged(int index){
    setState(() {
      toDoList[index][1]= !toDoList[index][1];
    });
  }

  void SaveNewTask(){
    setState(() {
      toDoList.add([_controller.text,false]);
      _controller.clear();
    });
  }

  void deleteTask(int index){
    setState(() {
      toDoList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade300,
      drawer: Drawer(
        backgroundColor: Colors.blue,
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.blueAccent,
                    Colors.deepPurpleAccent],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight
                  )
              ),
              child:
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(6),
                    child: Text('Make your day more Discipline',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text('Focus • Consistency • Growth',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home,color: Colors.white,),
              title: Text('Home',style: TextStyle(
                color: Colors.white,
              ),),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings,color: Colors.white,),
              title: Text('Settings',style: TextStyle(
                color: Colors.white,
              ),),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.info,color: Colors.white,),
              title: Text('Info',style: TextStyle(
                color: Colors.white,
              ),),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Center(child: Text('TO DO',
          style: TextStyle(
              fontFamily:'shortpics'),),
        ),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
          itemCount: toDoList.length,
          itemBuilder: (BuildContext context, index ){
            return Todolist(
              taskName: toDoList[index][0],
              taskCompleted: toDoList[index][1],
              onChanged: (value)=> checkBoxChanged(index),
              deleteFunction: (contex) => deleteTask(index),
            );
          }),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Expanded(
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(
                      horizontal: 30),
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                        hintText: 'Add the thing todo',
                        filled: true,
                        fillColor: Colors.white30,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blueAccent,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blueAccent,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        )
                    ),
                  ),
                )),
            FloatingActionButton(
              onPressed: () {
                SaveNewTask();
                _controller.clear();
              },
              child: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
