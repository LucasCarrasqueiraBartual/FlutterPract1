import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
          title: Text('Cards'),
    ),
    body: ListView(
      padding: EdgeInsets.all(10.0),
      children: [
        _cardTipus1(),
        SizedBox(height: 30.0,),
        _cardTipus2()
      ],
    ),
    );
  }

  Widget _cardTipus1() {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Titol de la targeta'),
            subtitle: Text('Lorem Ipsum is simply dummy texdt of the printing'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: (){}, child: Text('OK')),
              TextButton(onPressed: (){}, child: Text('Cancelar'))
            ],
          )
        ],
      ));
  }

  Widget _cardTipus2() {
    return Card(
      child: Column(
        children: [
          Image(image: 
          NetworkImage('https://picsum.photos/id/237/600/300')),
          Container(
            child: Text('Titol de la imatge'),
            padding: EdgeInsets.all(10),
          )
        ],
      ),
    );
  }
}