import 'package:flutter/material.dart';
import 'package:mainmenu/controllers/menuauthor_controller.dart';
import 'package:mainmenu/models/menuauthor_model.dart';


class MenuAuthor extends StatelessWidget {
  final MenusAuthorController controller = MenusAuthorController();

  @override
  Widget build(BuildContext context) {
    List<MenuAuthorBooks> menuAuthorBooks = controller.getMenuAuthorBooks();

    return SizedBox(
      width: 500,
      height: 400,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: menuAuthorBooks.length,
          itemBuilder: (context,index){
            var book = menuAuthorBooks[index];

            return ImageWithText(book.imagePath, book.penulis);
          }
      ),
    );
  }
}

class ImageWithText extends StatelessWidget {
  final String imagePath;
  final String penulis;

  const ImageWithText(this.imagePath, this.penulis);

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
            Text(
                penulis,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                ),
              textAlign: TextAlign.left,
              ),
          ],
        ),
      ),
    );
  }
}