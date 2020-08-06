
import '../import.dart';

class ListNews extends StatelessWidget{
  const ListNews({Key key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    final news = Provider.of<Product>(context, listen: false);

    return Container(
      width: 80,
      padding: const EdgeInsets.all(5.0),
      margin: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      //выравниваем виджет новостей по правому краю
      alignment: Alignment.centerRight,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) =>
                    INewsPage(productId: news.id)
              ),
              );
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 190, //высота новости
                  width: 340, //ширина новости
                  //стиль текста
                  child: Text(
                    '${news.title}',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    //выравниваем текст по провому краю
                    textAlign: TextAlign.right,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage(news.img),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}