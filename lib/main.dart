import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.blueGrey.shade100,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool Val = false;
  String radioItem = '';
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blueGrey.shade100,
      appBar: AppBar(
        title: Text('Hello AppBar'),
        leading: IconButton(
            icon: Icon(
          Icons.save,
          color: Colors.white,
        )),
        actions: [
          IconButton(
            icon: Icon(
              Icons.warning,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.location_on,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text(
                "Hello Word",
                style: TextStyle(
                    fontSize: 50.0,
                    color: Colors.lightBlueAccent,
                    fontWeight: FontWeight.w700,
                    backgroundColor: Colors.black87),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("  RaisedButton : "),
                  RaisedButton(
                    child: Row(
                      children: [Icon(Icons.search), Text("Click")],
                    ),
                    onPressed: () {},
                    color: Colors.lightBlue,
                    highlightColor: Colors.deepPurpleAccent,
                    elevation: 30.0,
                    textColor: Colors.white,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("  FlatButton : "),
                  FlatButton(
                    onPressed: () {},
                    child: Row(
                      children: [Icon(Icons.search), Text("Click")],
                    ),
                    color: Colors.deepPurple,
                    textColor: Colors.white,
                    highlightColor: Colors.lightBlueAccent,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("  OutlineButton : "),
                  OutlineButton(
                    onPressed: () {},
                    child: Row(
                      children: [Icon(Icons.search), Text("Click")],
                    ),
                    borderSide: BorderSide(color: Colors.lightBlueAccent),
                    textColor: Colors.deepPurple,
                    highlightedBorderColor: Colors.lightBlue,
                    highlightColor: Colors.blueGrey,
                  )
                ],
              ),
              IconButton(
                icon: Icon(
                  Icons.delete,
                  color: Colors.red,
                  size: 50.0,
                ),
                onPressed: () {},
                color: Colors.black,
                tooltip: "click",
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(" 1 "),
                  Checkbox(
                    value: Val,
                    checkColor: Colors.black87,
                    activeColor: Colors.red,
                    onChanged: (bool value) {
                      setState(() {
                        Val = value;
                      });
                    },
                  ),
                ],
              ),
              RadioListTile(
                groupValue: radioItem,
                title: Text('Radio Button Item 1'),
                value: 'Item 1',
                onChanged: (val) {
                  setState(() {
                    radioItem = val;
                  });
                },
              ),
              RadioListTile(
                groupValue: radioItem,
                activeColor: Colors.red,
                title: Text('Radio Button Item 2'),
                value: 'Item 2',
                onChanged: (val) {
                  setState(() {
                    radioItem = val;
                  });
                },
              ),
//              Row(
//                mainAxisAlignment: MainAxisAlignment.center,
//                children: [
//                  Image.network(
//                    "http://www.pingpongsoft.com/img/logo-control-c.png",
//                    width: 50,
//                    height: 50,
//                  ),
//                  Image.asset(
//                    "img/icon.png",
//                    width: 50,
//                    height: 50,
//                  ),
//                ],
//              )
              Slider(
                value: _currentSliderValue,
                min: 0,
                max: 100,
                divisions: 5,
                label: _currentSliderValue.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _currentSliderValue = value;
                  });
                },
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.blueGrey,
      ),
    );
  }
}
