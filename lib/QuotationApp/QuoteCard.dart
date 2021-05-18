import 'package:flutter/material.dart';
import 'Quote.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  final Function delete;
  QuoteCard({ this.quote ,this.delete });

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                quote.text,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[800],
                ),
              ),
              SizedBox(height: 3.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Text(
                   quote.author,
                   style: TextStyle(
                     fontSize: 14.0,
                     color: Colors.grey[500],
                   ),
                 ),
                 SizedBox(height: 4.0),
                  MaterialButton(
                    onPressed: delete,
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Icon(
                      Icons.delete,
                      size: 18,
                    ),
                    shape: CircleBorder(),
                  )

                  // ClipOval(
                  //   child: Material(
                  //     color: Colors.blue, // button color
                  //     child: InkWell(
                  //       splashColor: Colors.red, // inkwell color
                  //       child:
                  //       SizedBox(width: 35, height: 35, child: Icon(Icons.delete)),
                  //       onTap: () {},
                  //     ),
                  //   ),
                  // )
                  // CircleAvatar(
                  //   backgroundColor: Colors.blue,
                  //   radius: 15,
                  //   child: IconButton(
                  //     padding: EdgeInsets.zero,
                  //     icon: Icon(Icons.remove),
                  //     color: Colors.white,
                  //     onPressed: () {},
                  //   ),
                  // ),

               ],
              ),

            ],
          ),
        )
    );
  }
}