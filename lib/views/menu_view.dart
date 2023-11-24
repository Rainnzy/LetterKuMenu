import 'package:flutter/material.dart';
import 'package:mainmenu/controllers/menu_controller.dart';
import 'package:mainmenu/models/menu_model.dart';


class Menu extends StatelessWidget {
  final MenusController controller = MenusController();

  @override
  Widget build(BuildContext context) {
    List<MenuBooks> menuBooks = controller.getMenuBooks();

    return SizedBox(
      width: 500,
      height: 390,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: menuBooks.length,
        itemBuilder: (context,index){
          var book = menuBooks[index];

          return ImageWithText(book.imagePath, book.judul, book.rating);
        }
      ),
    );
  }
}

class ImageWithText extends StatelessWidget {
  final String imagePath;
  final String judul;
  final String rating;

  const ImageWithText(this.imagePath, this.judul, this.rating);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      margin: const EdgeInsets.fromLTRB(10, 10, 15, 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Column(
          children: <Widget>[
            Image.asset(imagePath, width: 180, height: 260),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    judul,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: <Widget>[
                      const Icon(Icons.star, color: Colors.yellow),
                      const SizedBox(width: 5),
                      Text(
                        rating,
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}