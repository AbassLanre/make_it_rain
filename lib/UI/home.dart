import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MakeItRainState();
  }
}

class MakeItRainState extends State<Home> {
  int _money_counter=0;
  // this function is for setting the state of the money being counted money_counter
  void _rainMoney(){
    setState(() {
      _money_counter+=150;
    });
  }
  changeColor() {
    if (_money_counter<=10000){
      return Colors.black;
    }
    else if(_money_counter>10000 && _money_counter <50000){
      return Colors.green;
    }

    else{
      return Colors.amber;
    }
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Make It Rain"),
        backgroundColor: Colors.green,
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Center(
              child: new Text(
                "Get Rich Man",
                style: new TextStyle(
                    color: Colors.amber,
                    fontWeight: FontWeight.w500,
                    fontSize: 30.0),
              ),
            ),

            new Expanded(
                child: new Center(
                  child: new Text(
                    '\$$_money_counter',
                    style: new TextStyle(
                        color: changeColor(),
                        fontSize: 60,
                        fontWeight: FontWeight.w800),
                  ),
                )),
            new Expanded(
                child: new Center(
                  child: new FlatButton(color: Colors.amber, onPressed: _rainMoney,
                      child: new Text("RAIN!!!",
                        style: new TextStyle(
                            fontSize: 25,
                        ),)),
                ))

          ],
        ),
      ),
    );
  }


}
