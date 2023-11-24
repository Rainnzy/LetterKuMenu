import 'package:mainmenu/models/menu_model.dart';

class MenusController{
  List<MenuBooks> getMenuBooks(){
    return[
      MenuBooks('tentangkamu.png', 'Tentang Kamu', '4.9'),
      MenuBooks('negeriparabedebah.png', 'Negeri Para Bedebah', '4.3'),
      MenuBooks('lautbercerita.png', 'Laut Bercerita', '4.6'),
      MenuBooks('curseinfinity.png', 'Curse Infinity', '4.5'),
    ];
  }
}

