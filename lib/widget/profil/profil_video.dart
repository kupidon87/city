import '../../import.dart';

class ProfilVideo extends StatefulWidget{
  @override
  _ProfilVideoState createState() => _ProfilVideoState();
}

class _ProfilVideoState extends State<ProfilVideo>{

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              ///начало видео

              ListView(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                children: <Widget>[

                  Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[

                        ///момент с видео
                        Container(
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              ///картинка от видео
                              Container(
                                padding: EdgeInsets.all(10),
                                child: Stack(
                                   children: <Widget>[
                                     ClipRRect(
                                       borderRadius: BorderRadius.circular(7),
                                       child: CachedNetworkImage(
                                         imageUrl: 'https://cdn.everypony.ru/storage/00/44/77/2016/06/04/81bd17666e.jpg',
                                         width: 120,
                                         height: 80,
                                         fit: BoxFit.cover,
                                       ),
                                     ),
                                     Container(
                                       alignment: Alignment.center,
                                       width: 120,
                                       height: 80,
                                       decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(6),
                                         color: Colors.black26,
                                       ),
                                       child: Icon(Icons.play_circle_outline, color: Colors.white, size: 40,),
                                     ),
                                   ],
                                ),
                              ),
                            ],
                          ),
                        ),


                        ///оглавдение и описание
                        Container(
                          width: 120,
                          height: 80,
                          child: Flexible(

                            child: Stack(
                              children: <Widget>[


                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 18,
//                                    bottom: 60,
//                                  left: 10,
                                    right: 10,
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
                                                    'Первое видео',
                                                    overflow: TextOverflow.ellipsis,
//                                                    softWrap: false,
                                                    style: TextStyle(
                                                      fontSize: 16,
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

                                                    Flexible(
                                                      child: Text(
                                                        'jfkjajksjna;kjvn afa;sf akns fkj aksfn;akjfsbkan fs;kjabfna;fah fs;ajhsf;kj ahkfjhak;j hfs;ajs;kfjha;sjkhf;ajhs ;fkjah;ksjhf;kajsf;kjaskfa;ksfa;kjhf;kajhsfk;jh as;fhiuegiwhefiuh gwi;ueh f; wiuhe; iwe;iuh w;ieh ;wuef; if ;as;kjhf;skhishfjkjdglghfkjsljfsakjgljsblj',
                                                        overflow: TextOverflow.ellipsis,
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
                                ),
                              ],
                            ),
                          ),
                        ),


                        Container(
                          width: 120,
                          child: Flexible(
                            child: Stack(
                              children: <Widget>[

                                Container(
                                  padding: EdgeInsets.only(left: 100),
                                  child: Stack(
                                    children: <Widget>[

                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[

                                          Icon(
                                            Icons.linear_scale,
                                            color: Colors.black,
                                            size: 20,
                                          ),
                                        ],
                                      ),

                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),


                ],
              ),

              ListView(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                children: <Widget>[

                  Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[

                        ///момент с видео
                        Container(
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              ///картинка от видео
                              Container(
                                padding: EdgeInsets.all(10),
                                child: Stack(
                                  children: <Widget>[
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(7),
                                      child: CachedNetworkImage(
                                        imageUrl: 'https://cdn.everypony.ru/storage/00/44/77/2016/06/04/81bd17666e.jpg',
                                        width: 120,
                                        height: 80,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      width: 120,
                                      height: 80,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        color: Colors.black26,
                                      ),
                                      child: Icon(Icons.play_circle_outline, color: Colors.white, size: 40,),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),


                        ///оглавдение и описание
                        Container(
                          width: 120,
                          height: 80,
                          child: Flexible(

                            child: Stack(
                              children: <Widget>[


                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 18,
//                                    bottom: 60,
//                                  left: 10,
                                    right: 10,
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
                                                    'Первое видео',
                                                    overflow: TextOverflow.ellipsis,
//                                                    softWrap: false,
                                                    style: TextStyle(
                                                      fontSize: 16,
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

                                                    Flexible(
                                                      child: Text(
                                                        'jfkjajksjna;kjvn afa;sf akns fkj aksfn;akjfsbkan fs;kjabfna;fah fs;ajhsf;kj ahkfjhak;j hfs;ajs;kfjha;sjkhf;ajhs ;fkjah;ksjhf;kajsf;kjaskfa;ksfa;kjhf;kajhsfk;jh as;fhiuegiwhefiuh gwi;ueh f; wiuhe; iwe;iuh w;ieh ;wuef; if ;as;kjhf;skhishfjkjdglghfkjsljfsakjgljsblj',
                                                        overflow: TextOverflow.ellipsis,
//                                                        softWrap: false,
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
                                ),
                              ],
                            ),
                          ),
                        ),


                        Container(
                          width: 120,
                          child: Flexible(
                            child: Stack(
                              children: <Widget>[

                                Container(
                                  padding: EdgeInsets.only(left: 100),
                                  child: Stack(
                                    children: <Widget>[

                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[

                                          Icon(
                                            Icons.linear_scale,
                                            color: Colors.black,
                                            size: 20,
                                          ),
                                        ],
                                      ),

                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),


                ],
              ),

              ListView(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                children: <Widget>[

                  Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[

                        ///момент с видео
                        Container(
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              ///картинка от видео
                              Container(
                                padding: EdgeInsets.all(10),
                                child: Stack(
                                  children: <Widget>[
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(7),
                                      child: CachedNetworkImage(
                                        imageUrl: 'https://cdn.everypony.ru/storage/00/44/77/2016/06/04/81bd17666e.jpg',
                                        width: 120,
                                        height: 80,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      width: 120,
                                      height: 80,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        color: Colors.black26,
                                      ),
                                      child: Icon(Icons.play_circle_outline, color: Colors.white, size: 40,),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),


                        ///оглавдение и описание
                        Container(
                          width: 120,
                          height: 80,
                          child: Flexible(

                            child: Stack(
                              children: <Widget>[


                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 18,
//                                    bottom: 60,
//                                  left: 10,
                                    right: 10,
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
                                                    'Первое видео',
                                                    overflow: TextOverflow.ellipsis,
//                                                    softWrap: false,
                                                    style: TextStyle(
                                                      fontSize: 16,
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

                                                    Flexible(
                                                      child: Text(
                                                        'jfkjajksjna;kjvn afa;sf akns fkj aksfn;akjfsbkan fs;kjabfna;fah fs;ajhsf;kj ahkfjhak;j hfs;ajs;kfjha;sjkhf;ajhs ;fkjah;ksjhf;kajsf;kjaskfa;ksfa;kjhf;kajhsfk;jh as;fhiuegiwhefiuh gwi;ueh f; wiuhe; iwe;iuh w;ieh ;wuef; if ;as;kjhf;skhishfjkjdglghfkjsljfsakjgljsblj',
                                                        overflow: TextOverflow.ellipsis,
//                                                        softWrap: false,
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
                                ),
                              ],
                            ),
                          ),
                        ),


                        Container(
                          width: 120,
                          child: Flexible(
                            child: Stack(
                              children: <Widget>[

                                Container(
                                  padding: EdgeInsets.only(left: 100),
                                  child: Stack(
                                    children: <Widget>[

                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[

                                          Icon(
                                            Icons.linear_scale,
                                            color: Colors.black,
                                            size: 20,
                                          ),
                                        ],
                                      ),

                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),


                ],
              ),

              ListView(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                children: <Widget>[

                  Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[

                        ///момент с видео
                        Container(
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              ///картинка от видео
                              Container(
                                padding: EdgeInsets.all(10),
                                child: Stack(
                                  children: <Widget>[
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(7),
                                      child: CachedNetworkImage(
                                        imageUrl: 'https://cdn.everypony.ru/storage/00/44/77/2016/06/04/81bd17666e.jpg',
                                        width: 120,
                                        height: 80,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      width: 120,
                                      height: 80,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        color: Colors.black26,
                                      ),
                                      child: Icon(Icons.play_circle_outline, color: Colors.white, size: 40,),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),


                        ///оглавдение и описание
                        Container(
                          width: 120,
                          height: 80,
                          child: Flexible(

                            child: Stack(
                              children: <Widget>[


                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 18,
//                                    bottom: 60,
//                                  left: 10,
                                    right: 10,
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
                                                    'Первое видео',
                                                    overflow: TextOverflow.ellipsis,
//                                                    softWrap: false,
                                                    style: TextStyle(
                                                      fontSize: 16,
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

                                                    Flexible(
                                                      child: Text(
                                                        'jfkjajksjna;kjvn afa;sf akns fkj aksfn;akjfsbkan fs;kjabfna;fah fs;ajhsf;kj ahkfjhak;j hfs;ajs;kfjha;sjkhf;ajhs ;fkjah;ksjhf;kajsf;kjaskfa;ksfa;kjhf;kajhsfk;jh as;fhiuegiwhefiuh gwi;ueh f; wiuhe; iwe;iuh w;ieh ;wuef; if ;as;kjhf;skhishfjkjdglghfkjsljfsakjgljsblj',
                                                        overflow: TextOverflow.ellipsis,
//                                                        softWrap: false,
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
                                ),
                              ],
                            ),
                          ),
                        ),


                        Container(
                          width: 120,
                          child: Flexible(
                            child: Stack(
                              children: <Widget>[

                                Container(
                                  padding: EdgeInsets.only(left: 100),
                                  child: Stack(
                                    children: <Widget>[

                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[

                                          Icon(
                                            Icons.linear_scale,
                                            color: Colors.black,
                                            size: 20,
                                          ),
                                        ],
                                      ),

                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),


                ],
              ),

              ListView(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                children: <Widget>[

                  Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[

                        ///момент с видео
                        Container(
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              ///картинка от видео
                              Container(
                                padding: EdgeInsets.all(10),
                                child: Stack(
                                  children: <Widget>[
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(7),
                                      child: CachedNetworkImage(
                                        imageUrl: 'https://cdn.everypony.ru/storage/00/44/77/2016/06/04/81bd17666e.jpg',
                                        width: 120,
                                        height: 80,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      width: 120,
                                      height: 80,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        color: Colors.black26,
                                      ),
                                      child: Icon(Icons.play_circle_outline, color: Colors.white, size: 40,),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),


                        ///оглавдение и описание
                        Container(
                          width: 120,
                          height: 80,
                          child: Flexible(

                            child: Stack(
                              children: <Widget>[


                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 18,
//                                    bottom: 60,
//                                  left: 10,
                                    right: 10,
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
                                                    'Первое видео',
                                                    overflow: TextOverflow.ellipsis,
//                                                    softWrap: false,
                                                    style: TextStyle(
                                                      fontSize: 16,
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

                                                    Flexible(
                                                      child: Text(
                                                        'jfkjajksjna;kjvn afa;sf akns fkj aksfn;akjfsbkan fs;kjabfna;fah fs;ajhsf;kj ahkfjhak;j hfs;ajs;kfjha;sjkhf;ajhs ;fkjah;ksjhf;kajsf;kjaskfa;ksfa;kjhf;kajhsfk;jh as;fhiuegiwhefiuh gwi;ueh f; wiuhe; iwe;iuh w;ieh ;wuef; if ;as;kjhf;skhishfjkjdglghfkjsljfsakjgljsblj',
                                                        overflow: TextOverflow.ellipsis,
//                                                        softWrap: false,
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
                                ),
                              ],
                            ),
                          ),
                        ),


                        Container(
                          width: 120,
                          child: Flexible(
                            child: Stack(
                              children: <Widget>[

                                Container(
                                  padding: EdgeInsets.only(left: 100),
                                  child: Stack(
                                    children: <Widget>[

                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[

                                          Icon(
                                            Icons.linear_scale,
                                            color: Colors.black,
                                            size: 20,
                                          ),
                                        ],
                                      ),

                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),


                ],
              ),

              ///конец видео
            ],
          )
      ),
    );
  }
}