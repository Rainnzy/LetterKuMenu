import 'package:flutter/material.dart';
import 'package:mainmenu/controllers/menugenre_controller.dart';
import 'package:mainmenu/models/menugenre_model.dart';


class MenuGenre extends StatelessWidget {
  final MenusGenreController controller = MenusGenreController();

  @override
  Widget build(BuildContext context) {
    List<MenuGenreBooks> menuGenreBooks = controller.getMenuGenreBooks();

    return SizedBox(
      width: 500,
      height: 130,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: menuGenreBooks.length,
          itemBuilder: (context,index){
            var book = menuGenreBooks[index];

            return ImageWithText(book.imagePath, book.genre);
          }
      ),
    );
  }
}

class ImageWithText extends StatelessWidget {
  final String imagePath;
  final String genre;

  const ImageWithText(this.imagePath, this.genre);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: const EdgeInsets.fromLTRB(10, 10, 15, 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Stack(
          children: [
            Image.asset(imagePath,
                fit: BoxFit.cover,
                height: 130,
                width: 200),
            Positioned.fill(
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      genre,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}