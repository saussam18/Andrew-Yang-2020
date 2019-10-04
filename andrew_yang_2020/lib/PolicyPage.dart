import 'package:flutter/material.dart';


class PolicyForm extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemWidth = size.width / 2;
    final double itemHeight = 275;
    return new Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(
            color: Color.fromRGBO(32, 43, 121, 1.0), //change your color here
          ),
        centerTitle: true,
        title: Image.asset('assets/images/yang2020.png', fit: BoxFit.fill),
        actions: <Widget>[
      IconButton(
      icon: new Icon(Icons.settings),
      onPressed: () {},
      )
        ],

      ),
      backgroundColor: Color.fromRGBO(32, 43, 121, 1.0),
      body:GridView.count(
        childAspectRatio: (itemWidth / itemHeight),
      crossAxisCount: 2,
      children: List.generate(12, (index) {
        return new InkWell(
          onTap: (){},
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(1),
              ),
              Container(
                width: itemWidth - 25,
                height: itemHeight - 75,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(218, 50, 72, 1.0)
                ),
                child: new Icon(Icons.attach_money, color: Colors.white, size: itemHeight - 85
                )
              ),
              Text("Economy/Jobs and Labor", textAlign: TextAlign.center, style: TextStyle(fontFamily: "Gordita", fontSize: 25, color: Colors.white),)
            ],
          ),
        );
      }),
    )
    );
  }
}

/*class PolicyPage extends StatefulWidget{
    @override
  _PolicyPageState createState() => new _PolicyPageState();
}
class _PolicyPageState extends State<PolicyPage>{
  @override
  Widget build(BuildContext context) {

  }
}*/
