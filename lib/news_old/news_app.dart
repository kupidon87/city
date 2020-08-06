
// ignore: avoid_web_libraries_in_flutter

import '../import.dart';

class NewsApp extends StatefulWidget with NavigationStates {
  @override
  _NewsAppState createState() => _NewsAppState();
}

class _NewsAppState extends State<NewsApp>{

  List<CategoryModel> categories = new List<CategoryModel>();
  List<ArticleModel> article = new List<ArticleModel>();
  bool _loading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    categories = getCategories();
    getNews();
  }


  getNews() async {
    News newsClass = News();
    await newsClass.getNews();
    article = newsClass.news;
    _loading = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                 Expanded(
                   child: SingleChildScrollView(
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                         _loading ? Center(
                           child: Container(
                             alignment: Alignment.center,
                               child: CircularProgressIndicator(),
                           ),
                         )
                             :  Container(
                                height: 70,
                                padding: EdgeInsets.symmetric(horizontal: 16),
                                  child: Column(
                                    children: <Widget>[
                                      ///Категории
                                      Container(
                                        padding: EdgeInsets.symmetric(horizontal: 16),
                                        height: 70,
                                        child: ListView.builder(
                                          itemCount: categories.length,
                                          scrollDirection: Axis.horizontal,
                                          // ignore: missing_return
                                          itemBuilder: (context, index){
                                            return CategoryTile(
                                              imageUrl: categories[index].imageUrl,
                                              categoryName: categories[index].categoryName,
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                         ),

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
              ],
            ),
          ),

    );
  }
}

class CategoryTile extends StatelessWidget{
  final String  imageUrl, categoryName;
  CategoryTile({this.imageUrl, this.categoryName});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => CategoryNews(
            category: categoryName.toLowerCase(),
          )
        ));
      },
      child: Container(
        margin: EdgeInsets.only(right: 16),
        child: Stack(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
                child: CachedNetworkImage(
                  imageUrl: imageUrl,
                  width: 120,
                  height: 60,
                  fit: BoxFit.cover,
                ),
            ),
            Container(
              alignment: Alignment.center,
              width: 120,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.black26,
              ),
              child: Text(
                  categoryName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BlogTile extends StatelessWidget{

  final String imageUrl, title, desc, url;
  BlogTile({
    @required this.imageUrl,
    @required this.title,
    @required this.desc,
    @required this.url
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => ArticleView(
            blogUrl: url,
          )
        ));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 16),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
                child: Image.network(
                    imageUrl,
                ),
            ),
            SizedBox(height: 5),
            Text(
              title,
              style: TextStyle(
                fontSize: 17,
                color: Colors.black87,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 5),
            Text(
              desc,
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}