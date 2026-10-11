import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 124, 18, 64),
        //leading: Icon(Icons.home),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.person_4_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.menu_outlined)),
        ],
      ),

      drawer: Drawer(
        //drawer options
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("accountName"),
              accountEmail: Text("accountEmail"),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 140, 31, 31),
              ),
            ),

            Divider(), //gives a line between two

            //Spacer(),
            ListTile(
              //drawer er item
              title: Text("Homepage"),
              //leading: Icon(Icons.home), icon bame jay
              trailing: Icon(Icons.home), //icon dane jay
              hoverColor: const Color.fromARGB(255, 136, 44, 44), //cursor
              onTap: () {},
            ),

            Divider(),
            Spacer(), //about us
            ListTile(
              title: Text("About Us"),
              //leading: Icon(Icons.home), icon bame
              trailing: Icon(Icons.question_mark), //icon dane
              hoverColor: const Color.fromARGB(255, 136, 44, 44), //
              onTap: () {},
            ),
          ],
        ),
      ),

      // body: Text(
      //   "Hello",
      //   style: TextStyle(
      //     fontSize: 50,

      //     color: const Color.fromARGB(255, 7, 150, 163),
      //   ),
      // ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center, //x axis
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                      fixedSize: Size(300, 105),
                      side: BorderSide(),
                      elevation: 50,
                    ),
                    child: Text("icon, text anything"),
                  ),
                ),

                SizedBox(width: 25),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                      fixedSize: Size(300, 65),
                      side: BorderSide(),
                      //elevation: 50, //3d effect dey
                    ),
                    child: Text("icon, text anything"),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                      fixedSize: Size(100, 25),
                      side: BorderSide(),
                      elevation: 50,
                    ),
                    icon: Icon(Icons.animation),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 200,
            width: 200,
            padding: EdgeInsets.all(20),
            alignment: Alignment.bottomRight,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 162, 73, 177),
              border: Border.all(width: 5, color: Colors.lightBlue),
              borderRadius: BorderRadius.all(Radius.circular(20)),
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [
                  Colors.purple,
                  const Color.fromARGB(355, 34, 3434, 434),
                ],
              ),
            ),
            child: Text("Hello Containter"),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "Add",
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.cyanAccent,
        hoverColor: Colors.deepPurpleAccent,
        shape: RoundedRectangleBorder(),
        child: Icon(Icons.add),
      ),
    );
  }
}
