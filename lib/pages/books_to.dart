
import 'package:flutter/material.dart';
import 'package:theome_fury_app/components/book_card.dart';

class BooksPage extends StatelessWidget {
   BooksPage({super.key});
   final List<Map<String, String>> books = [
    {
      'title': 'Philosophy 101',
      'author': 'Paul Kleiman',
      'description': 'Introduciton to philosophy',
      'cover': 'https://m.media-amazon.com/images/I/81YVKqTWdBL.jpg',
    },
    {
      'title': 'Mere Christianity',
      'author': 'Cs Lewis',
      'description': 'lorem  ipsum lorem ipsum lorem ipsum lorem ipsum',
      'cover': 'https://www.deseretbook.com/dw/image/v2/BJJM_PRD/on/demandware.static/-/Sites-products-deseretbook/default/dwcea785df/images/4666997/MereChristianity.jpg?sw=800&sh=800',
    },
    {
      'title': 'Summa Theologica',
      'author': 'Thomas Aquinas',
      'description': 'This is a brief description of Book Three.',
      'cover': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiK5A_YVgMxHS_nUPBX78TIJzhy7Png37vNw&s',
    },
    {
      'title': 'What Christians ought to believe',
      'author': 'Michael l beird',
      'description': 'This is a brief description of Book Four.',
      'cover': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7z2z0GpXrhy8i8TWojNnQPbM585L0NmtHrg&s',
    },
    {
      'title': 'The case for Christ',
      'author': 'Brant Pitre',
      'description': 'This is a brief description of Book Five.',
      'cover': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzZew_DxDxyr4MFo8O3fI7lgFgTUcW4peoiw&s',
    },
    {
      'title': 'The Apostolic Fathers',
      'author': 'Rick Brannan',
      'description': 'This is a brief description of Book Six.',
      'cover': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGjF4iMGq-jxx3sUwVWWxdGyIAId5mw0yfBw&s',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return    Scaffold(
            backgroundColor: Color(0xFFD6C6B4),
                     appBar: AppBar(
        title: const Text('Book Gallery',style: TextStyle(color:Colors.white),),
                backgroundColor: Color(0XFF4F6D7A),

      ),
      body: GridView.builder(
        gridDelegate: const  SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Two books in a row
          childAspectRatio: 0.75, // Aspect ratio for each book card
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        padding: const EdgeInsets.all(10),
        itemCount: books.length,
        itemBuilder: (context, index) {
          return BookCard(book: books[index]);
        },
      ),
    );
  }
}