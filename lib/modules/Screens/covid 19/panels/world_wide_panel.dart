import 'package:flutter/material.dart';

class WorldWidePanel extends StatelessWidget {
  const WorldWidePanel({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GridView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2
      ),
      children: <Widget>[
        StatusPanel(
          title: 'CONFIRMED',
          panelColor: Colors.red[100],
          textColor: Colors.red,
          count: "worldWide['cases'].toString()",
        ),
        StatusPanel(
          title: 'ACTIVE',
          panelColor: Colors.blue[100],
          textColor: Colors.blue[900],
          count: "worldWide['active'].toString()",
        ),
        StatusPanel(
          title: 'RECOVERD',
          panelColor: Colors.green[100],
          textColor: Colors.green,
          count: "worldWide['recovered'].toString()",
        ),
        StatusPanel(
          title: 'DEATHS',
          panelColor: Colors.grey[400],
          textColor: Colors.grey[900],
          count:" worldWide['deaths'].toString()",
        ),
      ],
    );
  }
}

class StatusPanel extends StatelessWidget {

  final Color panelColor;
  final Color textColor;
  final String title;
  final String count;

  const StatusPanel({Key key, this.panelColor, this.textColor, this.title, this.count}) : super(key: key);@override


  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Container(
      margin: const EdgeInsets.all(10),
      height: 80,
      width: width / 2,
      decoration: BoxDecoration(
        color: panelColor,
        borderRadius: BorderRadius.circular(15)

      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center ,
        children: <Widget>[
          Text(title,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: textColor
            ),
          ),
          Text(count,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: textColor
            ),
          )
        ],
      ),
    );
  }
}

