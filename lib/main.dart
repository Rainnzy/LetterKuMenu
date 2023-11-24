import 'package:flutter/material.dart';
import 'package:mainmenu/views/menu_view.dart';
import 'package:mainmenu/views/menugenre_view.dart';
import 'package:mainmenu/views/menuauthor_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        unselectedWidgetColor: Colors.deepOrangeAccent,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 60,
                    color: Colors.white,
                    child: Expanded(child: buildAppBar()),
                  ),
                  Menu(),
                  SizedBox(
                    height: 30,
                    child: Row(
                      children: [
                        const Expanded(
                          flex: 11,
                          child: Text("Explore By Genre", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                        ),
                        Expanded(
                          flex: 1,
                          child: TextButton(
                            onPressed: (){},
                            child: const Icon(Icons.arrow_right_alt, size: 30, color: Colors.deepOrangeAccent),
                          ),
                        ),
                      ],
                    ),
                  ),
                  MenuGenre(),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 30,
                    child: Row(
                      children: [
                        const Expanded(
                          flex: 11,
                          child: Text("Explore By Author", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                        ),
                        Expanded(
                          flex: 1,
                          child: TextButton(
                            onPressed: (){},
                            child: const Icon(Icons.arrow_right_alt, size: 30, color: Colors.deepOrangeAccent),
                          ),
                        ),
                      ],
                    ),
                  ),
                  MenuAuthor(),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: buildBottomAppBar(),
      ),
    );
  }

  BottomAppBar buildBottomAppBar() {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: SizedBox(
              width: 100,
              child: TextButton(
                onPressed: (){},
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home,
                      color: Colors.deepOrangeAccent,
                      size: 25,
                    ),
                    Text("Home", style: TextStyle(color: Colors.deepOrangeAccent))
                  ],
                ),
              ),
            ),),
          Expanded(
            child:SizedBox(
              width: 100,
              child: TextButton(
                onPressed: (){},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.search, color: Colors.grey.shade600,size: 25,),
                    Text("Discover", style: TextStyle(color: Colors.grey.shade600))
                  ],
                ),
              ),
            ),),
          Expanded(
            child:SizedBox(
              width: 100,
              child: TextButton(
                onPressed: (){},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.bookmarks, color: Colors.grey.shade600,size: 25,),
                    Text("Bookmark", style: TextStyle(color: Colors.grey.shade600))
                  ],
                ),
              ),
            ),),
          Expanded(
            child:SizedBox(
              width: 100,
              child: TextButton(
                onPressed: (){},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.person, color: Colors.grey.shade600,size: 25,),
                    Text("Account", style: TextStyle(color: Colors.grey.shade600))
                  ],
                ),
              ),
            ),),
        ],
      ),
    );
  }

  Row buildAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
          child: Image.asset("messageImage_1696588827553.jpg", height: 30),
        ),
        const DefaultTextStyle(
          style: TextStyle(color: Colors.black, fontSize: 20,
              fontWeight: FontWeight.bold),
          child: Text("LetterKu"),
        ),
      ],
    );
  }
}