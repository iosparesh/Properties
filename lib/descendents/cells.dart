import 'package:flutter/material.dart';
import 'package:test55/Models/Building.dart';

class Cell extends StatefulWidget {
  final Building building;
  Cell(this.building);
  @override
  _CellState createState() => _CellState(building);
}

class _CellState extends State<Cell> {
  Building building;
  _CellState(this.building);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            height: 50,
            width: 50,
            child: Image.asset(
              building.image,
              fit: BoxFit.fill,
              alignment: Alignment.center,
            ),
            margin: EdgeInsets.all(8),
          ),
          Flexible(
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 5, bottom: 5),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      building.title,
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.left,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    building.descript,
                    textAlign: TextAlign.left,
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      building.date,
                    ),
                  ),
                ],
              ),
              margin: EdgeInsets.all(8),
            ),
          )
        ],
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      ),
    );
  }
}
