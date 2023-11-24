import 'package:mainmenu/models/menuauthor_model.dart';

class MenusAuthorController{
  List<MenuAuthorBooks> getMenuAuthorBooks(){
    return[
      MenuAuthorBooks('tentangkamu.png', 'Risa Saraswati'),
      MenuAuthorBooks('negeriparabedebah.png', 'Risa Saraswati'),
      MenuAuthorBooks('lautbercerita.png', 'Risa Saraswati'),
      MenuAuthorBooks('curseinfinity.png', 'Risa Saraswati'),
    ];
  }
}

