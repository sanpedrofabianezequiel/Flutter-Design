import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(image: AssetImage('assets/landscape.jpg'),),

          Title(),
          
          ButtonSection(),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Text('Lorem imput Lorem imput Lorem imput Lorem imput Lorem imput Lorem imput Lorem imput Lorem imput Lorem imput Lorem imput Lorem imput Lorem imput Lorem imput Lorem imput Lorem imput Lorem imput Lorem imput Lorem imput ')
          ),

        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal:30,vertical:10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Text('Oeschinen Lake Campground', style: TextStyle(fontWeight: FontWeight.bold),),
                Text('Kandersted, Switerland', style: TextStyle(color: Colors.black45)),
            ],
          ),
          Expanded(child: Container(color: Colors.red,height: 10,)),
          Icon(Icons.star , color : Colors.red),
          Text('41'),
        ],
      ),
    );
  }
}


class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
    
          CustomButton(icon: Icons.call, text:'Call'),
          CustomButton(icon: Icons.map_sharp,text:'Route',),   
          CustomButton(icon: Icons.share,text: 'Share'),
    
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomButton({
    Key? key, required this.icon, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        Icon(this.icon,color:Colors.blue,size:30),
        Text(this.text,style: TextStyle(color : Colors.blue),),
      ]
    );
  }
}
