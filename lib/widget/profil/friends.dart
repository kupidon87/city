import '../../import.dart';


class Friends extends StatefulWidget{
  @override
  _FriendsState createState() => _FriendsState();
}

class _FriendsState extends State<Friends>{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[

          ListView(
            physics: ClampingScrollPhysics(),
            shrinkWrap: true,
            children: <Widget>[

            Container(
              padding: EdgeInsets.only(left: 15, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Все Друзья ',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 4,),
                  Text(
                    '20',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),

              Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    ///аватарка
                    Container(
                      height: 75,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[

                          Container(
                            padding: EdgeInsets.all(10),
                            child: Stack(
                              children: <Widget>[

                                ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: CachedNetworkImage(
                                    imageUrl: 'https://files.everypony.ru/smiles/big/25.gif',
                                    width: 50,
                                    height: 50,
                                    fit: BoxFit.cover,
                                  ),
                                )


                              ],
                            ),
                          ),

                        ],
                      ),
                    ),

                    ///ФИ+Гродо+Возраст
                    Container(
                      child: Flexible(
                        child: Stack(
                          children: <Widget>[

                            Padding(
                              padding: EdgeInsets.only(
                                top: 5,
                                bottom: 5,
                              ),
                              child: Stack(
                                children: <Widget>[

                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[

                                      Row(
                                        children: <Widget>[

                                          Flexible(
                                            child: Padding(
                                              padding: EdgeInsets.only(right: 18),
                                              child: Text(
                                                'Венера Шмалина',
                                                overflow: TextOverflow.ellipsis,
//                                                    softWrap: false,
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[

                                          Padding(
                                            padding: EdgeInsets.only(top: 6),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: <Widget>[
                                                Container(
                                                  child: Text(
                                                    'Город:',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ),

                                                SizedBox(
                                                  width: 10,
                                                ),

                                                Flexible(
                                                  child: Text(
                                                    'Бухарь',
                                                    overflow: TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )

                                        ],
                                      ),

                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[

                                          Padding(
                                            padding: EdgeInsets.only(top: 6),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: <Widget>[
                                                Container(
                                                  child: Text(
                                                    'Возраст:',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ),

                                                SizedBox(
                                                  width: 10,
                                                ),

                                                Flexible(
                                                  child: Text(
                                                    '90',
                                                    overflow: TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),

                                    ],

                                  ),


                                ],
                              ),
                            )



                          ],
                        ),
                      ),
                    ),




                  ],
                ),
              ),

              Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    ///аватарка
                    Container(
                      height: 75,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[

                          Container(
                            padding: EdgeInsets.all(10),
                            child: Stack(
                              children: <Widget>[

                                ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: CachedNetworkImage(
                                    imageUrl: 'https://avatars.mds.yandex.net/get-vh/1496358/5016224721268348117-worGoMgJoJuTyjcIZm3gzQ-1556390012/936x524',
                                    width: 50,
                                    height: 50,
                                    fit: BoxFit.cover,
                                  ),
                                )


                              ],
                            ),
                          ),

                        ],
                      ),
                    ),

                    ///ФИ+Гродо+Возраст
                    Container(
                      child: Flexible(
                        child: Stack(
                          children: <Widget>[

                            Padding(
                              padding: EdgeInsets.only(
                                top: 5,
                                bottom: 5,
                              ),
                              child: Stack(
                                children: <Widget>[

                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[

                                      Row(
                                        children: <Widget>[

                                          Flexible(
                                            child: Padding(
                                              padding: EdgeInsets.only(right: 18),
                                              child: Text(
                                                'Дуня Кулакова',
                                                overflow: TextOverflow.ellipsis,
//                                                    softWrap: false,
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[

                                          Padding(
                                            padding: EdgeInsets.only(top: 6),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: <Widget>[
                                                Container(
                                                  child: Text(
                                                    'Город:',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ),

                                                SizedBox(
                                                  width: 10,
                                                ),

                                                Flexible(
                                                  child: Text(
                                                    'Бухарь',
                                                    overflow: TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )

                                        ],
                                      ),

                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[

                                          Padding(
                                            padding: EdgeInsets.only(top: 6),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: <Widget>[
                                                Container(
                                                  child: Text(
                                                    'Возраст:',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ),

                                                SizedBox(
                                                  width: 10,
                                                ),

                                                Flexible(
                                                  child: Text(
                                                    '15',
                                                    overflow: TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),

                                    ],

                                  ),


                                ],
                              ),
                            )



                          ],
                        ),
                      ),
                    ),




                  ],
                ),
              ),

              Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    ///аватарка
                    Container(
                      height: 75,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[

                          Container(
                            padding: EdgeInsets.all(10),
                            child: Stack(
                              children: <Widget>[

                                ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: CachedNetworkImage(
                                    imageUrl: 'https://img2.freepng.ru/20180723/evf/kisspng-computer-icons-user-profile-password-login-end-user-5b55c605753eb6.8354409015323479094803.jpg',
                                    width: 50,
                                    height: 50,
                                    fit: BoxFit.cover,
                                  ),
                                )


                              ],
                            ),
                          ),

                        ],
                      ),
                    ),

                    ///ФИ+Гродо+Возраст
                    Container(
                      child: Flexible(
                        child: Stack(
                          children: <Widget>[

                            Padding(
                              padding: EdgeInsets.only(
                                top: 5,
                                bottom: 5,
                              ),
                              child: Stack(
                                children: <Widget>[

                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[

                                      Row(
                                        children: <Widget>[

                                          Flexible(
                                            child: Padding(
                                              padding: EdgeInsets.only(right: 18),
                                              child: Text(
                                                'Жиров Баран',
                                                overflow: TextOverflow.ellipsis,
//                                                    softWrap: false,
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[

                                          Padding(
                                            padding: EdgeInsets.only(top: 6),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: <Widget>[
                                                Container(
                                                  child: Text(
                                                    'Город:',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ),

                                                SizedBox(
                                                  width: 10,
                                                ),

                                                Flexible(
                                                  child: Text(
                                                    'Бухарь',
                                                    overflow: TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )

                                        ],
                                      ),

                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[

                                          Padding(
                                            padding: EdgeInsets.only(top: 6),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: <Widget>[
                                                Container(
                                                  child: Text(
                                                    'Возраст:',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ),

                                                SizedBox(
                                                  width: 10,
                                                ),

                                                Flexible(
                                                  child: Text(
                                                    '25',
                                                    overflow: TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),

                                    ],

                                  ),


                                ],
                              ),
                            )



                          ],
                        ),
                      ),
                    ),




                  ],
                ),
              ),


              Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    ///аватарка
                    Container(
                      height: 75,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[

                          Container(
                            padding: EdgeInsets.all(10),
                            child: Stack(
                              children: <Widget>[

                                ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: CachedNetworkImage(
                                    imageUrl: 'https://cdn.everypony.ru/storage/02/65/45/2017/10/03/a56e48d73d.png',
                                    width: 50,
                                    height: 50,
                                    fit: BoxFit.cover,
                                  ),
                                )


                              ],
                            ),
                          ),

                        ],
                      ),
                    ),

                    ///ФИ+Гродо+Возраст
                    Container(
                      child: Flexible(
                        child: Stack(
                          children: <Widget>[

                            Padding(
                              padding: EdgeInsets.only(
                                top: 5,
                                bottom: 5,
                              ),
                              child: Stack(
                                children: <Widget>[

                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[

                                      Row(
                                        children: <Widget>[

                                          Flexible(
                                            child: Padding(
                                              padding: EdgeInsets.only(right: 18),
                                              child: Text(
                                                'Птаха Нищебродная',
                                                overflow: TextOverflow.ellipsis,
//                                                    softWrap: false,
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[

                                          Padding(
                                            padding: EdgeInsets.only(top: 6),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: <Widget>[
                                                Container(
                                                  child: Text(
                                                    'Город:',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ),

                                                SizedBox(
                                                  width: 10,
                                                ),

                                                Flexible(
                                                  child: Text(
                                                    'Голубок',
                                                    overflow: TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )

                                        ],
                                      ),

                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[

                                          Padding(
                                            padding: EdgeInsets.only(top: 6),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: <Widget>[
                                                Container(
                                                  child: Text(
                                                    'Возраст:',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ),

                                                SizedBox(
                                                  width: 10,
                                                ),

                                                Flexible(
                                                  child: Text(
                                                    '20',
                                                    overflow: TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),

                                    ],

                                  ),


                                ],
                              ),
                            )



                          ],
                        ),
                      ),
                    ),




                  ],
                ),
              ),

              Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    ///аватарка
                    Container(
                      height: 75,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[

                          Container(
                            padding: EdgeInsets.all(10),
                            child: Stack(
                              children: <Widget>[

                                ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: CachedNetworkImage(
                                    imageUrl: 'https://cdn.everypony.ru/storage/01/98/82/2015/10/15/01101d6ba6.png',
                                    width: 50,
                                    height: 50,
                                    fit: BoxFit.cover,
                                  ),
                                )


                              ],
                            ),
                          ),

                        ],
                      ),
                    ),

                    ///ФИ+Гродо+Возраст
                    Container(
                      child: Flexible(
                        child: Stack(
                          children: <Widget>[

                            Padding(
                              padding: EdgeInsets.only(
                                top: 5,
                                bottom: 5,
                              ),
                              child: Stack(
                                children: <Widget>[

                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[

                                      Row(
                                        children: <Widget>[

                                          Flexible(
                                            child: Padding(
                                              padding: EdgeInsets.only(right: 18),
                                              child: Text(
                                                'Венера Шмалина',
                                                overflow: TextOverflow.ellipsis,
//                                                    softWrap: false,
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[

                                          Padding(
                                            padding: EdgeInsets.only(top: 6),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: <Widget>[
                                                Container(
                                                  child: Text(
                                                    'Город:',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ),

                                                SizedBox(
                                                  width: 10,
                                                ),

                                                Flexible(
                                                  child: Text(
                                                    'Бухарь',
                                                    overflow: TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )

                                        ],
                                      ),

                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[

                                          Padding(
                                            padding: EdgeInsets.only(top: 6),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: <Widget>[
                                                Container(
                                                  child: Text(
                                                    'Возраст:',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ),

                                                SizedBox(
                                                  width: 10,
                                                ),

                                                Flexible(
                                                  child: Text(
                                                    '90',
                                                    overflow: TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),

                                    ],

                                  ),


                                ],
                              ),
                            )



                          ],
                        ),
                      ),
                    ),




                  ],
                ),
              ),

              Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    ///аватарка
                    Container(
                      height: 75,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[

                          Container(
                            padding: EdgeInsets.all(10),
                            child: Stack(
                              children: <Widget>[

                                ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: CachedNetworkImage(
                                    imageUrl: 'https://cdn.everypony.ru/storage/01/98/82/2015/10/15/01101d6ba6.png',
                                    width: 50,
                                    height: 50,
                                    fit: BoxFit.cover,
                                  ),
                                )


                              ],
                            ),
                          ),

                        ],
                      ),
                    ),

                    ///ФИ+Гродо+Возраст
                    Container(
                      child: Flexible(
                        child: Stack(
                          children: <Widget>[

                            Padding(
                              padding: EdgeInsets.only(
                                top: 5,
                                bottom: 5,
                              ),
                              child: Stack(
                                children: <Widget>[

                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[

                                      Row(
                                        children: <Widget>[

                                          Flexible(
                                            child: Padding(
                                              padding: EdgeInsets.only(right: 18),
                                              child: Text(
                                                'Венера Шмалина',
                                                overflow: TextOverflow.ellipsis,
//                                                    softWrap: false,
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[

                                          Padding(
                                            padding: EdgeInsets.only(top: 6),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: <Widget>[
                                                Container(
                                                  child: Text(
                                                    'Город:',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ),

                                                SizedBox(
                                                  width: 10,
                                                ),

                                                Flexible(
                                                  child: Text(
                                                    'Бухарь',
                                                    overflow: TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )

                                        ],
                                      ),

                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[

                                          Padding(
                                            padding: EdgeInsets.only(top: 6),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: <Widget>[
                                                Container(
                                                  child: Text(
                                                    'Возраст:',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ),

                                                SizedBox(
                                                  width: 10,
                                                ),

                                                Flexible(
                                                  child: Text(
                                                    '90',
                                                    overflow: TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),

                                    ],

                                  ),


                                ],
                              ),
                            )



                          ],
                        ),
                      ),
                    ),




                  ],
                ),
              ),

              Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    ///аватарка
                    Container(
                      height: 75,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[

                          Container(
                            padding: EdgeInsets.all(10),
                            child: Stack(
                              children: <Widget>[

                                ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: CachedNetworkImage(
                                    imageUrl: 'https://cdn.everypony.ru/storage/01/98/82/2015/10/15/01101d6ba6.png',
                                    width: 50,
                                    height: 50,
                                    fit: BoxFit.cover,
                                  ),
                                )


                              ],
                            ),
                          ),

                        ],
                      ),
                    ),

                    ///ФИ+Гродо+Возраст
                    Container(
                      child: Flexible(
                        child: Stack(
                          children: <Widget>[

                            Padding(
                              padding: EdgeInsets.only(
                                top: 5,
                                bottom: 5,
                              ),
                              child: Stack(
                                children: <Widget>[

                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[

                                      Row(
                                        children: <Widget>[

                                          Flexible(
                                            child: Padding(
                                              padding: EdgeInsets.only(right: 18),
                                              child: Text(
                                                'Венера Шмалина',
                                                overflow: TextOverflow.ellipsis,
//                                                    softWrap: false,
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[

                                          Padding(
                                            padding: EdgeInsets.only(top: 6),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: <Widget>[
                                                Container(
                                                  child: Text(
                                                    'Город:',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ),

                                                SizedBox(
                                                  width: 10,
                                                ),

                                                Flexible(
                                                  child: Text(
                                                    'Бухарь',
                                                    overflow: TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )

                                        ],
                                      ),

                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[

                                          Padding(
                                            padding: EdgeInsets.only(top: 6),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: <Widget>[
                                                Container(
                                                  child: Text(
                                                    'Возраст:',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ),

                                                SizedBox(
                                                  width: 10,
                                                ),

                                                Flexible(
                                                  child: Text(
                                                    '90',
                                                    overflow: TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),

                                    ],

                                  ),


                                ],
                              ),
                            )



                          ],
                        ),
                      ),
                    ),




                  ],
                ),
              ),

            ],
          ),


          ],
        ),
      ),

    );
  }


}