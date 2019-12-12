import 'package:flutter/material.dart';
import 'package:test55/Models/Building.dart';
import 'package:test55/propertyDetail.dart';
import '../descendents/collectionCell.dart';

class CollectionView extends StatelessWidget {
final List<Building> buildings;

CollectionView({this.buildings});

  void onClick(int position, BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PropertyDetails(buildings.elementAt(position))),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: GridView.builder(
        primary: false,
        scrollDirection: Axis.vertical,
        itemCount: buildings.length,
        itemBuilder: (context, position) {
          Building buildInfo = buildings.elementAt(position);
          return InkWell(onTap: () => onClick(position, context) , child: CollectionCell(buildInfo),);
        },
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1, childAspectRatio: 1.5),
      ),
    );
  }
}
