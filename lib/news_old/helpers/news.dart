import '../../import.dart';
import 'package:http/http.dart' as http;


class News{

  List<ArticleModel> news = [];

  Future<void> getNews() async{
    String url = 'http://newsapi.org/v2/top-headlines?country=ru&apiKey=7fd50bc3b8ee4ad79dcff367372e3a7a';
    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);

    if(jsonData['status'] == 'ok'){
      jsonData['articles'].forEach((element){
        if(element['urlToImage'] != null && element['description'] != null){
          ArticleModel articleModel = ArticleModel(
            title: element['title'],
            author: element['author'],
            description: element['description'],
            url: element['url'],
            urlToImage: element['urlToImage'],
            content: element['content'],
          );

          news.add(articleModel);

        }

      });
    }
  }
}


class CategoryNewsClass{

  List<ArticleModel> news = [];

  Future<void> getNews (String category) async{
    String url = 'http://newsapi.org/v2/top-headlines?country=in&category=$category&apiKey=7fd50bc3b8ee4ad79dcff367372e3a7a';
    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);

    if(jsonData['status'] == 'ok'){
      jsonData['articles'].forEach((element){
        if(element['urlToImage'] != null && element['description'] != null){
          ArticleModel articleModel = ArticleModel(
            title: element['title'],
            author: element['author'],
            description: element['description'],
            url: element['url'],
            urlToImage: element['urlToImage'],
            content: element['content'],
          );

          news.add(articleModel);

        }

      });
    }





  }
}