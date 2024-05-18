import 'package:flutter/material.dart';

class GridViewC extends StatelessWidget {
  const GridViewC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Grid View'),
      backgroundColor: Colors.pink,),
      body: GridView.count(crossAxisCount: 3,
    children: List.generate(choices.length, (index) {
    return Center(
    child: SelectCard(choice: choices[index]),
    );
    }
    ),
    )
    );
  }
}
class Choice {
  const Choice({required this.title,required this.icon});
  final String title;
  final IconData icon;
}
const List<Choice> choices = const <Choice>[
  const Choice(title: 'Home', icon: Icons.home),
  const Choice(title: 'Contact', icon: Icons.contacts),
  const Choice(title: 'Map', icon: Icons.map),
  const Choice(title: 'Phone', icon: Icons.phone),
  const Choice(title: 'Camera', icon: Icons.camera),
  const Choice(title: 'Settings', icon: Icons.settings),
  const Choice(title: 'Album', icon: Icons.album),
  const Choice(title: 'Wifi', icon: Icons.wifi),
  const Choice(title: 'GPS', icon: Icons.gps_fixed)
];

class SelectCard extends StatelessWidget{
  const SelectCard({required Key key, required this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context){
    final TextStyle? textStyle = Theme.of(context).textTheme.displaySmall;

    return Card(
      color: Colors.lightGreen,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: Icon(choice.icon, size: 50, color: textStyle?.color,),),
            Text(choice.title, style: textStyle,)
          ],
        ),
      ),
    );
  }
}
