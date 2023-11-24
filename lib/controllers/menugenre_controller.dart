import 'package:mainmenu/models/menugenre_model.dart';

class MenusGenreController{
  List<MenuGenreBooks> getMenuGenreBooks(){
    return[
      MenuGenreBooks('tentangkamu.png', 'Romance'),
      MenuGenreBooks('negeriparabedebah.png', 'Fantasy'),
      MenuGenreBooks('lautbercerita.png', 'Fiction'),
      MenuGenreBooks('curseinfinity.png', 'Thriller'),
    ];
  }
}

