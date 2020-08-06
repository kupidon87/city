
import '../../import.dart';


class CategoryNews extends StatefulWidget{
  final String category;
  CategoryNews({this.category});

  @override
  _CategoryNewsState createState() => _CategoryNewsState();
}

class _CategoryNewsState extends State<CategoryNews>{
  @override
  Widget build(BuildContext context) {

  List<ArticleModel> article = new List<ArticleModel>();
  bool _loading = true;
  @override
    void initState(){
    super.initState();
  }

 void getNews() async {
   CategoryNewsClass newsClass = CategoryNewsClass();
    await newsClass.getNews(widget.category);
    article = newsClass.news;
    _loading = false;
  }


    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(newstitle),
          ],
        ),
        actions: <Widget>[
          Opacity(
            opacity: 0,
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Icon(Icons.save)),
          )
        ],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: _loading ? Center(
        child: Container(
          child: CircularProgressIndicator(),
        ),
      )
          :
      SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              ///Блог
              Container(
                padding: EdgeInsets.all(16),
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    itemCount: article.length,
                    itemBuilder: (context, index){
                      return BlogTile(
                        imageUrl: article[index].urlToImage,
                        title: article[index].title,
                        desc: article[index].description,
                        url: article[index].url,
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//class BlogTile extends StatelessWidget{
//
//  final String imageUrl, title, desc, url;
//  BlogTile({
//    @required this.imageUrl,
//    @required this.title,
//    @required this.desc,
//    @required this.url
//  });
//
//  @override
//  Widget build(BuildContext context) {
//    return GestureDetector(
//      onTap: (){
//        Navigator.push(context, MaterialPageRoute(
//            builder: (context) => ArticleView(
//              blogUrl: url,
//            )
//        ));
//      },
//      child: Container(
//        margin: EdgeInsets.only(bottom: 16),
//        child: Column(
//          children: <Widget>[
//            ClipRRect(
//              borderRadius: BorderRadius.circular(16),
//              child: Image.network(
//                imageUrl,
//              ),
//            ),
//            SizedBox(height: 5),
//            Text(
//              title,
//              style: TextStyle(
//                fontSize: 17,
//                color: Colors.black87,
//                fontWeight: FontWeight.w500,
//              ),
//            ),
//            SizedBox(height: 5),
//            Text(
//              desc,
//              style: TextStyle(
//                color: Colors.black54,
//              ),
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//}