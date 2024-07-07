import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    Text('Home'),
    Text('Search'),
    Text('Profile'),
  ];

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
        
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Container( // this is the balance "block"
                padding: EdgeInsets.only(top: 20),
                width: 350.0,
                height: 250.0,
                decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 0.1,
                ),
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.all( Radius.circular(20.0),),
                boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),],
                ),
                child: Column(
                  children: [
                    Text(
                      style: TextStyle(fontSize: 20), // Change the font size here
                      "Accessible:"
                      ),
                    Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            Text(
                              style: TextStyle(fontSize: 30), // Change the font size here
                              "0.00"
                              ),
                            Text(
                              style: TextStyle(fontSize: 30), // Change the font size here
                              "€"
                              ),
                          ],),
                    ),

                    Text(
                      style: TextStyle(fontSize: 20), // Change the font size here
                      "Not accessible:"
                      ),
                    Container(
                      child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                             Text(
                              style: TextStyle(fontSize: 30), // Change the font size here
                              "0.00"
                              ),
                            Text(
                              style: TextStyle(fontSize: 30), // Change the font size here
                              "€"
                              ),
                          ],),
                    ),
                    Container( // this is the balance "block"
                      margin: EdgeInsets.only(top: 20),
                      width: 200.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 0.1,
                      ),
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.all( Radius.circular(20.0),),
                      boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),],
                      ),
                      child: Center(child: Text(
                        style: TextStyle(fontSize: 20),
                        "View balances"
                        )),
                      ),
                    

                  ],
                  ),

              ),
              Container( // this is the objectives list
                margin:  EdgeInsets.only(top: 20.0),
                width: 350.0,
                height: 350.0,
                decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 0.1,
                ),
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.all( Radius.circular(20.0),),
                boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),],
                ),
              ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: 'Transactions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
        ],
        currentIndex: 1,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
    ),
    );
  }
}
