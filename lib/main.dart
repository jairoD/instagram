import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: Instagram(),
    );
  }
}

class Instagram extends StatefulWidget {
  @override
  _InstagramState createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = [
    new HomePage(),
    new Icon(Icons.search),
    new Icon(Icons.add),
    new Icon(Icons.favorite_border),
    new Icon(Icons.person_outline),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar(),
      body: new Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: Container(height: 0.0)),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), title: Container(height: 0.0)),
          BottomNavigationBarItem(
              icon: Icon(Icons.add), title: Container(height: 0.0)),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), title: Container(height: 0.0)),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), title: Text('Home')),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.black,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget topBar() {
    return new AppBar(
      backgroundColor: Colors.white,
      title: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          new Container(
            child: new Row(
              children: <Widget>[
                new IconButton(
                  icon: Icon(Icons.camera_alt),
                  onPressed: () {},
                  color: Colors.black,
                ),
                new Text('Instagram',
                    style: new TextStyle(
                      color: Colors.black,
                    )),
              ],
            ),
          ),
          new Container(
            child: new Row(
              children: <Widget>[
                new IconButton(
                  icon: Icon(Icons.live_tv),
                  onPressed: () {},
                  color: Colors.black,
                ),
                new IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {},
                  color: Colors.black,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          new Text('hola $index');
        });
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        if (index == 0) {
          return new Container(
            height: 100,
            padding: EdgeInsets.only(top: 20),
            child: new ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return new Container(
                  padding: EdgeInsets.only(right: 10, left: 5),
                  child: Column(
                    children: <Widget>[
                      new ClipOval(
                        child: Image.network(
                          'https://mobirise.com/bootstrap-template/profile-template/assets/images/timothy-paul-smith-256424-1200x800.jpg',
                          height: 60,
                          width: 60,
                          fit: BoxFit.cover,
                        ),
                      ),
                      new Text(
                        'Nombre',
                        style: new TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        } else {
          return new Column(
            children: <Widget>[
              new ListTile(
                leading: new CircleAvatar(
                  backgroundImage: new NetworkImage(
                      'https://mobirise.com/bootstrap-template/profile-template/assets/images/timothy-paul-smith-256424-1200x800.jpg'),
                ),
                title: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text('Jairo'),
                    new IconButton(
                      icon: Icon(Icons.more_vert),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              new ClipRect(
                child: Image.network(
                  'https://mobirise.com/bootstrap-template/profile-template/assets/images/elsa-noblet-341687-1200x800.jpg',
                  width: 1080,
                  fit: BoxFit.cover,
                ),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Container(
                    child: new Row(
                      children: <Widget>[
                        new IconButton(
                          icon: Icon(Icons.favorite_border),
                          color: Colors.black,
                          onPressed: () {},
                        ),
                        new IconButton(
                          icon: Icon(Icons.comment),
                          color: Colors.black,
                          onPressed: () {},
                        ),
                        new IconButton(
                          icon: Icon(Icons.send),
                          color: Colors.black,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  new Container(
                    child: new IconButton(
                      icon: Icon(Icons.bookmark_border),
                      color: Colors.black,
                      onPressed: () {},
                    ),
                  )
                ],
              ),
              new Container(
                padding: EdgeInsets.only(left: 10),
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new Text(
                      '999 Me gusta',
                      style: new TextStyle(
                          fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 2),
                    ),
                    new Text(
                      'UserName description example Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                      style: new TextStyle(fontSize: 12),
                      maxLines: 4,
                    ),
                  ],
                ),
              ),
              new Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new ClipOval(
                      child: Image.network(
                        'https://mobirise.com/bootstrap-template/profile-template/assets/images/timothy-paul-smith-256424-1200x800.jpg',
                        height: 30,
                        width: 30,
                        fit: BoxFit.cover,
                      ),
                    ),
                    new Padding(
                      padding: EdgeInsets.only(right: 10),
                    ),
                    new Flexible(
                      child: new TextField(
                        decoration: InputDecoration(
                          hintText: 'Agrega un comentario...',
                          hintStyle: TextStyle(color: Colors.grey),
                          fillColor: Colors.green,
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          enabledBorder: new UnderlineInputBorder(
                            borderSide:
                                new BorderSide(color: Colors.transparent),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        }
      },
    );
  }
}
