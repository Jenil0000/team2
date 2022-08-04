import 'package:flutter/material.dart';
import 'package:team2/second.dart';

void main()
{
  runApp(MaterialApp(home: team2()));
}
class team2 extends StatefulWidget {
  const team2({Key? key}) : super(key: key);

  @override
  State<team2> createState() => _team2State();
}

class _team2State extends State<team2> {

  List<String> name =["Chennai Super Kings",
    "Delhi Capitals",
  "Gujarat Titans",
  "Kolkata Knight Riders",
  "Lucknow Super Giants",
  "Mumbai Indians",
  "Punjab Kings",
    "Rajasthan Royals",
    "Royal Challengers Bangalore",
    "Sunrisers Hyderabad"
  ];
  List<String> image = [
    "team photo/CSK.png",
    "team photo/DC.png",
    "team photo/GTmedium.png",
    "team photo/KKR.png",
    "team photo/LSGmedium.png",
    "team photo/MI.png",
    "team photo/PBKS.png",
    "team photo/RCB.png",
    "team photo/RR.png",
    "team photo/SRH.png",

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Team List"),),

    body: ListView.separated(  itemCount:name.length,
    separatorBuilder: (context, index){
      return Divider();
    },
    itemBuilder: (context, index){
      return ListTile(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return second(name[index],image[index],index);
          }));
          },
      leading: Image(image: AssetImage(image[index])),
      title: Text(name[index]),
        trailing: Icon(Icons.list),
      );
    },
    ),
    );
  }
}
