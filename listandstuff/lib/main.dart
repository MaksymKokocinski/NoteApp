import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

List<Quote> quotes = [
  Quote(author: 'Casey Neistat', text: 'Do more'),
  Quote(author: 'Peter McKinnon', text: 'Be creative'),
  Quote(author: 'Casey Neistat', text: 'Work harder'),
  Quote(author: 'Casey Neistat', text: 'Just do it'),
];

class _QuoteListState extends State<QuoteList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awsome Qotes'),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: Column(
        children: quotes
            .map((quote) => QuoteCard(
                  quote: quote,
                  delete: () {
                    setState(() {
                      quotes.remove(quote);
                    });
                  },
                ))
            .toList(),
      ),
    );
  }
}
