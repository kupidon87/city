
import '../../import.dart';

class PInfo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: AlertDialog(
        title: Text(infoPer),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              //1 Row => Дата рождения
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: <Widget>[
                     Container(
                       width: 110,
                       child: Column(
                         children: <Widget>[
                           Text(
                             dataR,
                             style: TextStyle(
                               fontSize: 14,
                               fontWeight: FontWeight.normal,
                             ),
                           ),
                         ],
                       ),
                     ),
                      Container(
                        width: 150,
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Beta',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                   ],
                ),
              Divider(
                color: Colors.grey[800],
              ),
              //2 Row => Город
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      width: 110,
                      child: Column(
                        children: <Widget>[
                          Text(
                            city,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 170,
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Beta',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
              ),
              Divider(
                color: Colors.grey[800],
              ),
              //3 Row => Брак
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    width: 110,
                    child: Column(
                      children: <Widget>[
                        Text(
                          sex,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 170,
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Beta',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.grey[800],
              ),
              //3 Row => Брак
//              Row(
//                mainAxisAlignment: MainAxisAlignment.spaceAround,
//                children: <Widget>[
//                  Container(
//                    width: 110,
//                    child: Column(
//                      children: <Widget>[
//                        Text(
//                          'Брак:',
//                          style: TextStyle(
//                            fontSize: 14,
//                            fontWeight: FontWeight.normal,
//                          ),
//                        ),
//                      ],
//                    ),
//                  ),
//                  Container(
//                    width: 170,
//                    child: Column(
//                      children: <Widget>[
//                        Text(
//                          'В отгуле',
//                          style: TextStyle(
//                            fontWeight: FontWeight.normal,
//                            fontSize: 12,
//                          ),
//                        ),
//                      ],
//                    ),
//                  ),
//                ],
//              ),
//              Divider(
//                color: Colors.grey[800],
//              ),
//              //3 Row => Брак
//              Row(
//                mainAxisAlignment: MainAxisAlignment.spaceAround,
//                children: <Widget>[
//                  Container(
//                    width: 110,
//                    child: Column(
//                      children: <Widget>[
//                        Text(
//                          'Брак:',
//                          style: TextStyle(
//                            fontSize: 14,
//                            fontWeight: FontWeight.normal,
//                          ),
//                        ),
//                      ],
//                    ),
//                  ),
//                  Container(
//                    width: 170,
//                    child: Column(
//                      children: <Widget>[
//                        Text(
//                          'В отгуле',
//                          style: TextStyle(
//                            fontWeight: FontWeight.normal,
//                            fontSize: 12,
//                          ),
//                        ),
//                      ],
//                    ),
//                  ),
//                ],
//              ),
//              Divider(
//                color: Colors.grey[800],
//              ),
//              //3 Row => Брак
//              Row(
//                mainAxisAlignment: MainAxisAlignment.spaceAround,
//                children: <Widget>[
//                  Container(
//                    width: 110,
//                    child: Column(
//                      children: <Widget>[
//                        Text(
//                          'Брак:',
//                          style: TextStyle(
//                            fontSize: 14,
//                            fontWeight: FontWeight.normal,
//                          ),
//                        ),
//                      ],
//                    ),
//                  ),
//                  Container(
//                    width: 170,
//                    child: Column(
//                      children: <Widget>[
//                        Text(
//                          'В отгуле',
//                          style: TextStyle(
//                            fontWeight: FontWeight.normal,
//                            fontSize: 12,
//                          ),
//                        ),
//                      ],
//                    ),
//                  ),
//                ],
//              ),
//              Divider(
//                color: Colors.grey[800],
//              ),
//              //3 Row => Брак
//              Row(
//                mainAxisAlignment: MainAxisAlignment.spaceAround,
//                children: <Widget>[
//                  Container(
//                    width: 110,
//                    child: Column(
//                      children: <Widget>[
//                        Text(
//                          'Брак:',
//                          style: TextStyle(
//                            fontSize: 14,
//                            fontWeight: FontWeight.normal,
//                          ),
//                        ),
//                      ],
//                    ),
//                  ),
//                  Container(
//                    width: 170,
//                    child: Column(
//                      children: <Widget>[
//                        Text(
//                          'В отгуле',
//                          style: TextStyle(
//                            fontWeight: FontWeight.normal,
//                            fontSize: 12,
//                          ),
//                        ),
//                      ],
//                    ),
//                  ),
//                ],
//              ),
//              Divider(
//                color: Colors.grey[800],
//              ),
//              //3 Row => Брак
//              Row(
//                mainAxisAlignment: MainAxisAlignment.spaceAround,
//                children: <Widget>[
//                  Container(
//                    width: 110,
//                    child: Column(
//                      children: <Widget>[
//                        Text(
//                          'Брак:',
//                          style: TextStyle(
//                            fontSize: 14,
//                            fontWeight: FontWeight.normal,
//                          ),
//                        ),
//                      ],
//                    ),
//                  ),
//                  Container(
//                    width: 170,
//                    child: Column(
//                      children: <Widget>[
//                        Text(
//                          'В отгуле',
//                          style: TextStyle(
//                            fontWeight: FontWeight.normal,
//                            fontSize: 12,
//                          ),
//                        ),
//                      ],
//                    ),
//                  ),
//                ],
//              ),
//              Divider(
//                color: Colors.grey[800],
//              ),
//              //3 Row => Брак
//              Row(
//                mainAxisAlignment: MainAxisAlignment.spaceAround,
//                children: <Widget>[
//                  Container(
//                    width: 110,
//                    child: Column(
//                      children: <Widget>[
//                        Text(
//                          'Брак:',
//                          style: TextStyle(
//                            fontSize: 14,
//                            fontWeight: FontWeight.normal,
//                          ),
//                        ),
//                      ],
//                    ),
//                  ),
//                  Container(
//                    width: 170,
//                    child: Column(
//                      children: <Widget>[
//                        Text(
//                          'В отгуле',
//                          style: TextStyle(
//                            fontWeight: FontWeight.normal,
//                            fontSize: 12,
//                          ),
//                        ),
//                      ],
//                    ),
//                  ),
//                ],
//              ),
//              Divider(
//                color: Colors.grey[800],
//              ),
//              //3 Row => Брак
//              Row(
//                mainAxisAlignment: MainAxisAlignment.spaceAround,
//                children: <Widget>[
//                  Container(
//                    width: 110,
//                    child: Column(
//                      children: <Widget>[
//                        Text(
//                          'Брак:',
//                          style: TextStyle(
//                            fontSize: 14,
//                            fontWeight: FontWeight.normal,
//                          ),
//                        ),
//                      ],
//                    ),
//                  ),
//                  Container(
//                    width: 170,
//                    child: Column(
//                      children: <Widget>[
//                        Text(
//                          'В отгуле',
//                          style: TextStyle(
//                            fontWeight: FontWeight.normal,
//                            fontSize: 12,
//                          ),
//                        ),
//                      ],
//                    ),
//                  ),
//                ],
//              ),
//            Divider(
//              color: Colors.grey[800],
//            ),
//            //3 Row => Брак
//            Row(
//              mainAxisAlignment: MainAxisAlignment.spaceAround,
//              children: <Widget>[
//                Container(
//                  width: 110,
//                  child: Column(
//                    children: <Widget>[
//                      Text(
//                        'Брак:',
//                        style: TextStyle(
//                          fontSize: 14,
//                          fontWeight: FontWeight.normal,
//                        ),
//                      ),
//                    ],
//                  ),
//                ),
//                Container(
//                  width: 170,
//                  child: Column(
//                    children: <Widget>[
//                      Text(
//                        'В отгуле',
//                        style: TextStyle(
//                          fontWeight: FontWeight.normal,
//                          fontSize: 12,
//                        ),
//                      ),
//                    ],
//                  ),
//                ),
//              ],
//            ),
          ],
          ),
      ),
        actions: <Widget>[
          FlatButton(
            onPressed: (){Navigator.pop(context);},
            child: Text(close),
          ),
        ],
        ),
      );
  }
}