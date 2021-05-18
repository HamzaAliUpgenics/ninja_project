import 'package:flutter/material.dart';
import 'package:ninja_project/PagesApp/ChooseLocation.dart';
import 'package:ninja_project/PagesApp/Home.dart';
import 'package:ninja_project/PagesApp/SplashPage.dart';
import '../QuotationApp/Quote.dart';
import '../QuotationApp/QuoteCard.dart';

void main() => runApp(MaterialApp(
     // home: Home(), due to conflict we face for routings need to remove it
      routes: {'/': (context) => Home(),
        '/home': (context) => Home(),
        '/location': (context) => ChooseLocation(),
      },
    ));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        author: 'Oscar Wilde',
        text: 'Be yourself; everyone else is already taken'),
    Quote(
        author: 'Oscar Wilde',
        text: 'I have nothing to declare except my genius'),
    Quote(
        author: 'Oscar Wilde',
        text: 'The truth is rarely pure and never simple')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),
      body: Column(
        children: quotes
            .map((quote) => QuoteCard(
                quote: quote,
                delete: () {
                  setState(() {
                    quotes.remove(quote);
                  });
                }))
            .toList(),
      ),
    );
  }
}
