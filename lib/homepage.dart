import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page", style: TextStyle(fontSize: 30)),
        backgroundColor: const Color.fromARGB(255, 92, 28, 43),
        //leading: Icon(Icons.home),
        foregroundColor: Colors.white,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notification_add_rounded),
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Raihan Ahmed"),
              accountEmail: Text("raihan@gmail.com"),
              decoration: BoxDecoration(color: Color.fromARGB(255, 55, 16, 27)),
            ),
            ListTile(
              title: Text("Home Page"),
              onTap: () {},
              leading: Icon(Icons.home),
              hoverColor: const Color.fromARGB(150, 221, 217, 217),
            ),
            //Spacer(),
            ListTile(
              title: Text("Profile"),
              onTap: () {},
              leading: Icon(Icons.person),
              hoverColor: const Color.fromARGB(150, 221, 217, 217),
            ),
            
            ListTile(
              title: Text("Dashboard"),
              onTap: () {},
              leading: Icon(Icons.dashboard),
              hoverColor: const Color.fromARGB(150, 221, 217, 217),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 128, 45, 65),
                    foregroundColor: Colors.white,
                    fixedSize: Size(140, 50),
                    side: BorderSide(),
                    elevation: 10,
                  ),
                  child: Text("TextButton"),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 111, 35, 53),
                    foregroundColor: Colors.white,
                    fixedSize: Size(140, 50),
                    side: BorderSide(),
                  ),
                  child: Text("ElevatedButton"),
                ),

                OutlinedButton(onPressed: () {}, child: Text("OutlinedButton")),

                IconButton(
                  onPressed: () {},
                  style: IconButton.styleFrom(),
                  icon: Icon(Icons.login),
                ),
              ],
            ),
          ),
          Container(
            height: 200,
            width: 200,
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              border: Border.all(
                width: 5,
                color: const Color.fromARGB(255, 80, 7, 2),
              ),
              borderRadius: BorderRadius.all(Radius.circular(10)),
              gradient: RadialGradient(
                colors: [
                  const Color.fromARGB(255, 111, 35, 53),
                  const Color.fromARGB(255, 145, 51, 77),
                ],
              ),
            ),
            child: Text(
              "Hello Container!",
              style: TextStyle(color: Colors.white),
            ),
          ), // this comma is needed
          // new part starts here
          SizedBox(
            height: 200,
            width: 200,
            child: Card(
              margin: EdgeInsets.all(20),
              color: Colors.purple,
              shadowColor: Colors.black12,
              elevation: 20,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(child: Text("Hello Card")),
            ),
          ),
          Image.asset('assets/images/download.JPG'),
          Image.network(''),

          // new part ends here
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "Add",
        backgroundColor: const Color.fromARGB(255, 92, 28, 43),
        foregroundColor: Colors.white,
        shape: BeveledRectangleBorder(),
        child: Icon(Icons.add),
      ),
    );
  }
}
