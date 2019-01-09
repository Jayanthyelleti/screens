import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


import 'package:flutter/rendering.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FirstScreen(),
  ));
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.green,
        title: Text('Sports App'),
        actions: <Widget>[
          new IconButton(icon:Icon(Icons.search, color: Colors.red,), onPressed: (){cam();}),
          new IconButton(icon:Icon(Icons.camera_alt, color: Colors.white,), onPressed: (){Navigator.push(
            context,
            new MaterialPageRoute(builder: (context) {
              return Camera();
            }
            ),
          );})
        ],
      ),
      body:



      Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 150.0),
          child: Column(
            children: <Widget>[
              RaisedButton(
                child: Text('Launch screen1'),
                onPressed: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) {
                      return SecondScreen();
                    }
                    ),
                  );
                },
              ),
              RaisedButton(
                child: Text('Camera'),
                onPressed: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) {
                      return Camera();
                    }
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),







      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text('wolf'),
              accountEmail: Text('ex@id.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white,),
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.green,
              ),
            ),
            InkWell(
              onTap: (){ Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) {
                  return Camera();
                }
                ),
              );},
              child: ListTile(
                title: Text('Camera'),
                leading: Icon(Icons.camera_alt),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Homepage'),
                leading: Icon(Icons.image),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Homepage'),
                leading: Icon(Icons.favorite, color: Colors.pink,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Homepage'),
                leading: Icon(Icons.dashboard),
              ),
            ),
            Divider(color: Colors.black,),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Homepage'),
                leading: Icon(Icons.settings),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Homepage'),
                leading: Icon(Icons.help),
              ),
            )
          ],
        ),
      ),
    );

  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: [
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                new Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    'Evening Cricket123',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                new Text('11 DEC',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.location_on,
            color: Colors.red[500],
          ),
          Text('Madhuravada'),
        ],
      ),
    );


    Column buildButtonColumn(IconData icon, String label) {
      Color color = Theme
          .of(context)
          .primaryColor;

      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Widget buttonSection = new Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          buildButtonColumn(Icons.thumb_up, 'like'),
          buildButtonColumn(Icons.comment, 'Comment'),
          buildButtonColumn(Icons.share, 'SHARE'),
        ],
      ),
    );


    Widget buttonS = new Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildButtonColumn(Icons.arrow_forward, ''),
          buildButtonColumn(Icons.arrow_forward, ''),
          buildButtonColumn(Icons.person, ''),
          buildButtonColumn(Icons.arrow_back, ''),
          buildButtonColumn(Icons.arrow_back, ''),
          Divider(),
        ],
      ),
    );


    return MaterialApp(
      title: 'Flutter slide',
      home: Scaffold(
        appBar: new AppBar(
            backgroundColor: Colors.black,
            title: Text('Cricket'),
            leading: IconButton(icon:Icon(Icons.arrow_back), onPressed:(){Navigator.pop(context);})
        ),

        body:

        ListView(
          children: [
            titleSection,
            new Image.asset(
              'test/top.jpeg',
              width: 1000.0,
              height: 70.0,
              fit: BoxFit.fitWidth,
            ),
            Padding(
              padding: const EdgeInsets.only(left:80.0),
              child: Row(
                children: <Widget>[
                  new CircleAvatar(

                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person, color: Colors.white,),
                  ),
                  new CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person, color: Colors.white,),
                  ),
                  new CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.keyboard_arrow_down, color: Colors.white,),
                  ),
                  new CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person, color: Colors.white,),
                  ),
                  new CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person, color: Colors.white,),
                  ),
                ],
              ),
            ),

            new Image.asset(
              'test/lake.jpeg',
              width: 1000.0,
              height: 240.0,
              fit: BoxFit.fitWidth,
            ),
            buttonS,
            Divider(color: Colors.grey),
            buttonSection,
            RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go back!'),
            ),



          ],
        ),
      ),
    );
  }
}

class Camera extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Camera"),
          leading: IconButton(icon:Icon(Icons.arrow_back), onPressed:(){ Navigator.push(
            context,
            new MaterialPageRoute(builder: (context) {
              return FirstScreen();
            }
            ),
          );})
      ),
      body: Center(
        child: Column(
          children: <Widget>[

            RaisedButton(
              onPressed: () { Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) {
                  return FirstScreen();
                }
                ),
              );
              },
              child: Text('Go back!'),
            ),
            RaisedButton(
              onPressed: () { cam();},
              child: Text('Take pic'),

            ),
          ],
        ),
      ),

    );
  }
}
void cam() => runApp(new CameraApp());

class CameraApp extends StatefulWidget {
  @override
  _CameraAppState createState() => _CameraAppState();
}

class _CameraAppState extends State<CameraApp> {
  File image;


  picker() async {
    print('Picker is called');
    File img = await ImagePicker.pickImage(source: ImageSource.camera);
//    File img = await ImagePicker.pickImage(source: ImageSource.gallery);
    if (img != null) {
      image = img;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
            title: new Text('Camera'),
            leading: IconButton(icon:Icon(Icons.arrow_back), onPressed:(){main();})

        ),
        body: new Container(
          child: new Center(
            child: Column(
              children: <Widget>[
                image == null
                    ? new Text('No Image to Show ')
                    : new Image.file(image),
                RaisedButton(
                  onPressed: () {main();},
                  child: Text('go back'),

                ),
              ],
            ),

          ),
        ),
        floatingActionButton: new FloatingActionButton(
          onPressed: picker,
          child: new Icon(Icons.camera_alt),
        ),
      ),
    );
  }
}
