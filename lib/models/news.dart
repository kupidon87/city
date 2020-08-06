import '../import.dart';

class Product with ChangeNotifier{
  final String id;
  final String title;
  final String description;
  final String img;

  Product({
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.img
  });
}


class ProductDataProvider with ChangeNotifier{

  List<Product> _items = [
    Product(
      id: 'p3',
      title: 'Привет из глубинки',
      description: 'Описание новостей в новой эпохе. Но мы приведем кучу примеров для этого угара и нормальных новостей =)',
      img: 'https://tehnot.com/wp-content/uploads/2017/03/android-o-00.jpg',
    ),
    Product(
      id: 'p1',
      title: 'Привет из балота',
      description: 'Описание новостей в новой эпохе',
      img: 'https://bipbap.ru/wp-content/uploads/2017/08/2.jpg',
    ),
    Product(
      id: 'p4',
      title: 'Привет с верталета',
      description: 'Описание новостей в новой эпохе',
      img: 'https://bipbap.ru/wp-content/uploads/2017/10/0_8eb56_842bba74_XL-640x400.jpg',
    ),
    Product(
      id: 'p6',
      title: 'Привет с верталета',
      description: 'Описание новостей в новой эпохе',
      img: 'https://ok2web.ru/wp-content/uploads/2016/12/90-servisov-gde-brat-kartinki-dlja-sajta-besplatno-2.jpg',
    ),
    Product(
      id: 'p8',
      title: 'Привет с верталета',
      description: 'Описание новостей в новой эпохе',
      img: 'https://cepia.ru/images/u/pages/kartinki-tigra-cover-1290.jpg',
    ),
    Product(
      id: 'p9',
      title: 'Привет с верталета',
      description: 'Описание новостей в новой эпохе',
      img: 'https://lux.fm/uploads/800x450_DIR/media_news/2019/12/5e07071a44b8f090207200.jpg',
    ),
    Product(
      id: 'p10',
      title: 'Привет с верталета',
      description: 'Описание новостей в новой эпохе',
      img: 'https://upload.wikimedia.org/wikipedia/ru/6/66/%D0%92%D0%B5%D1%81%D1%91%D0%BB%D1%8B%D0%B5_%D0%BA%D0%B0%D1%80%D1%82%D0%B8%D0%BD%D0%BA%D0%B8.jpg',
    ),
    Product(
      id: 'p11',
      title: 'Привет с верталета',
      description: 'Описание новостей в новой эпохе',
      img: 'https://mistika.pro/wp-content/uploads/2019/03/ono-strashnaya-kartinka-klouna.jpg',
    ),
  ];

  UnmodifiableListView<Product> get items => UnmodifiableListView(_items);

  Product getElementById(String id)
  => _items.singleWhere((value) => value.id == id);
}