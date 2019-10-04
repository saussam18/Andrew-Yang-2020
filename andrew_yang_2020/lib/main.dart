import 'package:andrew_yang_2020/PolicyPage.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(32, 43, 121, 1.0),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/Yang-2020-red.png'),
            new Container(
                width: 190.0,
                height: 190.0,
                decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Color.fromRGBO(218, 50, 72, 1.0),
                      width: 5.0
                    ),
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: new AssetImage(
                            'assets/images/yang.jpg')
                    )
                )
            ),
            Padding(
              padding: EdgeInsets.all(25.0),
            ),
           /* Container(
              padding: const EdgeInsets.all(8.0),
              color: Color.fromRGBO(218, 50, 72, 1.0),
              child: new Text("#YangGang", style: TextStyle(fontSize: 36, color: Colors.white),)
            ),*/
            new RaisedButton(
              onPressed: _launchURL,
              color: Color.fromRGBO(218, 50, 72, 1.0),
              child: new Text("Donate", style: TextStyle(fontSize: 40, color:Colors.white, fontFamily: 'Gordita')), padding: const EdgeInsets.all(10.0))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Color.fromRGBO(218, 50, 72, 1.0) ,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PolicyForm()));
        },
        icon: new Icon(Icons.info, color: Colors.white, size: 34),
        label: Text("Yang Polices",
            style: TextStyle(fontSize: 16, color: Colors.white)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

  void _launchURL() async {
    const url = 'https://secure.actblue.com/donate/ay-web-homepage-20190819?utm_source=website&utm_medium=organic&utm_term=all&refcode=ay-web-top-nav-all&_ga=2.65111342.102725996.1566870349-1799224560.1566870349';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }

  }
