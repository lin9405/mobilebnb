


import 'package:flutter/material.dart';


class Dialogs{
   information(BuildContext context, String location, String room, String star , String day1, String time1, String day2, String time2)
   {
      return showDialog(
          context: context,
          barrierDismissible: true,

          builder: (BuildContext context){

             return AlertDialog(
                title: Container(
                   //    height: 0.0,
                   // width: 300.0,
                   //       padding: EdgeInsets.all(0.0),
                    color: Colors.blue,
                    child : Text('Please check your choice :)')
                ),

                content: Container(

                   height: 300.0,
                   child:Column(
                      children: <Widget>[
                         ListTile(
                            leading: Icon(Icons.location_on, color : Colors.lightBlueAccent),
                            title: Text(location),
                         ),
                         ListTile(
                            leading: Icon(Icons.credit_card, color : Colors.lightBlueAccent),
                            title: Text(room),
                         ),
                         ListTile(
                            leading: Icon(Icons.star, color: Colors.yellow,),

                            title: Text(star +'/⭐⭐⭐⭐⭐', style: TextStyle(fontSize: 12.0),),
                         ),


                      ],
                   ),

                ),
                actions: <Widget>[



                   RaisedButton(
                      child: Text('Search'),
                      onPressed: () {
                      },

                   ),

                   RaisedButton(
                      child: Text('Cancel'),
                      onPressed: () {
                         Navigator.pop(context);
                      },

                   ),

                ],


             );
          }
      );
   }
}
