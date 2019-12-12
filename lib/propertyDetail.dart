import 'package:flutter/material.dart';
import 'package:test55/Models/Building.dart';

class PropertyDetails extends StatelessWidget {
  final Building building;
  PropertyDetails(this.building);
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Detail"), backgroundColor: Colors.lightBlue,), body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
                  child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
               Container(margin: EdgeInsets.only(top: 20), child: Image.asset(building.image, height: 280, width: double.infinity, fit: BoxFit.fill,),),
               Container(
                 margin: EdgeInsets.all(8),
                 child: FlatButton(child: Text("Book Now", style: TextStyle(fontSize: 18),),color: Colors.lightBlue, onPressed: () {

              },),
               ),
              Card(
                    color: Colors.lightBlue,
                    elevation: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.asset(
                          building.companiImage,
                          height: 80,
                          width: 80,
                        ),
                        Text("Sampoorna Builders (Heritage)", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
                      ],
                    ),
                  ),
              Card( elevation: 4,
                child: Column(children: <Widget>[
                Container(
                margin: EdgeInsets.all(8),
                child: Row(
                  children: <Widget>[
                    Text(building.title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black,),),
                    Text(building.bhk, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
              ),
              Container(
                margin: EdgeInsets.all(8),
                width: double.infinity,
                child: Text(building.date, textAlign: TextAlign.start, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),),
              ),
              ],),),
              Card(child: Column(children: <Widget>[
                Container(
                margin: EdgeInsets.all(8),
                width: double.infinity,
                child: Text("₹ ${building.startingPrise}",textAlign: TextAlign.start, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),),
              ),
                Container(
                margin: EdgeInsets.all(8),
                width: double.infinity,
                child: Text(building.descript,textAlign: TextAlign.start, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),),
              ),
              ],),)
            ],
          ),
        ),
    ),); 
      
  }
}
