import 'package:flutter/services.dart' show rootBundle;


class _MenuProvider {
  List<dynamic> opcions = [];
  _MenuProvider(){
    carregarDades();
  }

  carregarDades() {
    rootBundle.loadString('data/menu_opts.json').then((data) {
      print(data);
    });
  }
}


final menuProvider = new _MenuProvider();