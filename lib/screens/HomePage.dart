import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application/providers/menu_providers.dart';
import 'package:flutter_application/screens/alert_page.dart';
import 'package:flutter_application/utils/icono_string_utils.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components'),
      ),
      body: _llista()
    );
  }
}

Widget _llista() {

  return FutureBuilder(future: menuProvider.carregarDades(),
  initialData: [],
  builder: (context, AsyncSnapshot<List<dynamic>> snapshot){
    print('builder');
    print(snapshot.data);
    return ListView(
      children: _llistaElements(context, snapshot.data),
    );
  },
  );
}

List<Widget> _llistaElements(BuildContext context,List<dynamic>? data) {
  final List<Widget> elements = [];
  data?.forEach((element) 
  {
    final widgetTemp = ListTile(
      title: Text(element['texte']),
      leading: getIcon(element['icona']),
      trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue,),
      onTap: (){
        /*final route = MaterialPageRoute(builder: (context) {
          return AlertPage();
        });
        Navigator.push(context, route); */

        Navigator.pushNamed(context, element['ruta']);
      },
      );
    elements..add(widgetTemp)..add(Divider());
  }
  );
  print(menuProvider.opcions);

  return elements;
}