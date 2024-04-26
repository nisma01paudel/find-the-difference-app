import 'package:findthedifference/differencepage.dart';
import 'package:flutter/material.dart';
import './images.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.purple,
      appBar: AppBar(
        //  backgroundColor: Colors.yellow,
        title: Text(
          'Find The Difference',
        ),
        centerTitle: true,
      ),
      drawer: (Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              child: Text('Drawer Header'),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      )),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2), // Number of columns
        itemCount: allImages.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.all(20),
            child: Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => DifferenceApp(
                              image: allImages[index]["img"].toString(),
                            )),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue,
                  ),
                  // color: Colors.blue,
                  child: Center(
                    child: Text(
                      'Challenge ${index + 1}',
                      style: TextStyle(
                          fontSize: 20,
                          fontStyle: FontStyle.normal,
                          height: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
