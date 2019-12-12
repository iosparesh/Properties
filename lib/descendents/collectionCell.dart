import 'package:flutter/material.dart';
import 'package:test55/Models/Building.dart';

class CollectionCell extends StatefulWidget {
  final Building building;
  CollectionCell(this.building);
  @override
  _CollectionCellState createState() => _CollectionCellState(building);
}

class _CollectionCellState extends State<CollectionCell> {
  Building building;
  _CollectionCellState(this.building);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(8),
                  child: Text(
                building.startingPrise,
                textAlign: TextAlign.start,
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey, fontSize: 18),
              )),
              Image.asset(
                building.image,
                fit: BoxFit.cover,
                height: 180,
              ),
            ],
          ),
          Stack(children: [
            Card
            (
              elevation: 0,
              color: Color.fromRGBO(0, 0, 0, 0),
                child: Container(
                height: 80,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 0, 0, 0.3),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      color: Colors.white,
                      margin: EdgeInsets.only(left: 8, right: 8),
                      child: Image.asset(building.companiImage),
                      height: 40,
                      width: 40,
                    ),
                    Container(
                      constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width - 100,),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(right: 16),
                                child: Text(
                                  building.title,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 18,
                                      color: Colors.white),
                                ),
                              ),
                              Container(
                                child: Text(
                                  building.bhk,
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.normal,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          ),
                          Container(child: Text(
                                building.descript,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.normal,
                                    color: Colors.white),
                              ),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ])
        ],
      ),
    );
  }
}
