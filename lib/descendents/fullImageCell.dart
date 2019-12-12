import 'package:flutter/material.dart';
import '../Models/Building.dart';

class FullImageCell extends StatefulWidget {
  final Building building;
  FullImageCell(this.building);
  @override
  _FullImageCellState createState() => _FullImageCellState(building);
}

class _FullImageCellState extends State<FullImageCell> {
  Building building;
  _FullImageCellState(this.building);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: 337,
        minHeight: 180,
      ),
      child: Column(
        children: <Widget>[
          Flexible(
            child: Container(
              child: Image.asset(building.image),
              width: double.infinity,
            ),
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
                      maxLines: 1,
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.left,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    building.descript,
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 4,
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    alignment: Alignment.centerRight,
                    child: Text(
                      building.date,
                      maxLines: 1,
                    ),
                  ),
                ],
              ),
              margin: EdgeInsets.all(20),
            ),
          ),
        ],
      ),
    );
  }
}
