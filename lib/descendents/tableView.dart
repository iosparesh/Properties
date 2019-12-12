import 'package:flutter/material.dart';
import '../descendents/fullImageCell.dart';
import '../Models/Building.dart';

class TableView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, position) {
        return FullImageCell(Building(
            title: "Jay Jalaram Flats",
            address:
                "Near SAV bridge, Sola, sudarshan Apartment villa, Ahmedabad 388001",
            image: "Images/build.png",
            descript:
                "2 and 3 BHK Fully furnished home. The way of thininking it to shrink whbbnnfs fdifjisdj fodsfj dofjofiod fiojsfiodsoj dfoi jdsfj odjs fodjs foj fodjs fo jojfoids fojs foj f odjsfodjsfoj dsfjofj osdjfoj dsfoj doen this detail acceds the limit too far beyond the screen height. it may start to shrink it as i have given the njkndjkfjk",
            date: "1st july 1995"));
      },
    );
  }
}