import 'package:flutter/material.dart';
import 'package:progredd/slide.dart';

class RadioPage extends StatefulWidget {
  const RadioPage({Key? key}) : super(key: key);

  @override
  _RadioPageState createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  int _value= 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Radio Button'),),
      body:Column(
        children: [
          Row(
            children: [
              Radio(value: 1, groupValue: _value, onChanged: (abc){
                setState(() {
                  _value =1 ;
                });
              }),
              Text('Engineer')
            ],
          ),
          Row(
            children: [
              Radio(value: 2, groupValue: _value, onChanged: (abc){
                setState(() {
                  _value =2 ;
                });
              }),
              Text('Engineer')
            ],
          ),
          Row(
            children: [
              Radio(value: 3, groupValue: _value, onChanged: (abc){
                setState(() {
                  _value =3 ;
                });
              }),
              Text('Engineer')
            ],
          ),
          ElevatedButton(onPressed: (){
Navigator.push(context,MaterialPageRoute(builder: (cnx){return SlidePage();}));

          }, child: Text('Slide')),
        ],

      ) ,

    );
  }
}
