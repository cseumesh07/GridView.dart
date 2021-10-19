import 'package:flutter/material.dart';

void main(){
  runApp(App());
}

class Apps extends StatefulWidget {
  const Apps({Key? key}) : super(key: key);

  @override
  _AppsState createState() => _AppsState();
}

class _AppsState extends State<Apps> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:
        AppBar(
        backgroundColor: Colors.grey,
        title: Text('Drawer'),
        ),
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Card Widget', style: TextStyle(color: Colors.white),),
      ),
      body: GridView.count(
        scrollDirection: Axis.horizontal,
        crossAxisCount: 2,
        padding: EdgeInsets.all(8.0),
        children: List.generate(6, (index){

          return Card(
            margin: EdgeInsets.all(4),
            child: InkWell(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Icon(
                  //   Icons.laptop,
                  //   color: Colors.blue,
                  //   size: 30,
                  // ),
                  // Text('Laptop'),
                  // Icon(
                  //   Icons.favorite,
                  //   color: Colors.blue,
                  //   size: 30,
                  // ),
                  // Text('Favorite'),
                  Icon(
                    Icons.home,
                    color: Colors.blue,
                    size: 30,
                  ),
                 // Divider(),
                  Text('Number $index'),
                ],
              ),
            ),
          );
        }
        ),
      ),
    );
  }
}




class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Apps(),
    );
  }
}
