import 'package:flutter/material.dart';

class second extends StatefulWidget {
  String name;
  String image;
  int index1;


  second(this.name,this.image,this.index1);
  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  List<String> team =[ ];
  List<String> chennai = ["MS Dhoni","C Hari Nishaanth","Devon Conway","Robin Uthappa","Ruturaj Gaikwad","Subhranshu Senapati","Ambati Rayudu","Ravindra Jadeja","Narayan Jagadeesan","Chris Jordan"];
  List<String> Delhi = ["Rishabh Pant","Ashwin Hebbar","David Warner","Mandeep Singh","Prithvi Shaw","Rovman Powell","K.S Bharat","Tim Seifert","Axar Patel","Kamlesh Nagarkoti"];
  List<String> Gujrat =["Hardik Pandya","Abhinav Manohar","David Miller","Rahmanullah Gurbaz","Shubman Gill","Matthew Wade","Wriddhiman Saha","B. Sai Sudharsan","Darshan Nalkande","Dominic Drakes"];
  List<String> Kolkata =[""];
  List<String> Lucknow =[""];
  List<String> Mumbai  =[""];
  List<String> Punjab =[""];
  List<String> Rajasthan  =[""];
  List<String> Bangalore =[""];
  List<String> Hyderabad =[""];

  @override
  void initState(){
    super.initState();
    if(widget.index1==0)
      {
        team=chennai;
      }
    if(widget.index1==1)
    {
      team=Delhi;
    }
    if(widget.index1==2)
    {
      team=Gujrat;
    }
    if(widget.index1==3)
    {
      team=Kolkata;
    }
    if(widget.index1==4)
    {
      team=Lucknow;
    }
    if(widget.index1==5)
    {
      team=Lucknow;
    }
    if(widget.index1==6)
    {
      team=Mumbai;
    }
    if(widget.index1==7)
    {
      team=Punjab;
    }
    if(widget.index1==8)
    {
      team=Rajasthan;
    }
    if(widget.index1==9)
    {
      team=Bangalore;
    }
    if(widget.index1==10)
    {
      team=Hyderabad;
    }
  }
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("$widget.name"),),
      body: ListView.separated(
          itemBuilder: (context, index){
        return ListTile(
          leading: Image(image: AssetImage(widget.image),),
          title: Text(team[index],textAlign: TextAlign.center),
          trailing: Icon(Icons.done),
        );
      },

          separatorBuilder: (context, index){
        return Divider();
      },
          itemCount: team.length )

    );
  }
}