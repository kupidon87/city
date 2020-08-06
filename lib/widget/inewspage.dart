
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../import.dart';

class INewsPage extends StatelessWidget{

  final String productId;
  INewsPage ({Key key, this.productId}) : super (key: key);

 @override
  Widget build(BuildContext context) {
   final data = Provider.of<ProductDataProvider>(context)
   .getElementById(productId);

    return Scaffold(
      appBar: AppBar(
        title: Text(data.title, style: GoogleFonts.marmelad(),),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Hero(
              tag: data.img,
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(data.img),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Card(
              elevation: 5.0,
              margin: const EdgeInsets.symmetric(
                  horizontal: 35.0,
                  vertical: 10.0
              ),
              child: Container(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      data.title,
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 26.0,
                        ),
                    ),
                    Divider(),
                    Text(
                        data.description,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                    ),
                    Divider(),
                    SizedBox(
                      height: 20.0,
                    ),
                    /* Сздесь будет коментарии.
                    Text('Скоро появиться добавить комментариий к новости, '
                        'только для авторизированых пользователей'),
                     */
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}