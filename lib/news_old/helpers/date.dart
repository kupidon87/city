import 'package:nadym/models/category_model.dart';
import '../../import.dart';
List<CategoryModel> getCategories(){
  List<CategoryModel> category = new List<CategoryModel>();
  CategoryModel categoryModel = new CategoryModel();

  //LifeStyle
  categoryModel.categoryName = 'business';
  categoryModel.imageUrl = 'https://s3.envato.com/files/5f73ad1a-9e4d-43c3-b3c1-83dc56e8c497/inline_image_preview.jpg';
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  //Hi-tech
  categoryModel.categoryName = 'entertainment';
  categoryModel.imageUrl = 'https://res.cloudinary.com/people-matters/image/upload/fl_immutable_cache,w_624,h_351,q_auto,f_auto/v1504879212/1504879211.jpg';
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  //Спорт
  categoryModel.categoryName = 'general';
  categoryModel.imageUrl = 'https://novochgrad.ru/public/din_files/untitled%20folder/sport.jpg';
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  //бизнес
  categoryModel.categoryName = 'health';
  categoryModel.imageUrl = 'https://biznes-repetitor.ru/upload/iblock/288/288b633f0421858ab9dce003c9434861.jpg';
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  //Интервью
  categoryModel.categoryName = 'science';
  categoryModel.imageUrl = 'https://lh3.googleusercontent.com/proxy/E3SpqtiLYQlG6gZTIVhXNWaO-UdL9Ji4bFTbf8wrCJ_xiu7NpXGt5nMzbQrnxjxuBf130mnNFr3fnAq858nEJvw8L38L_fOGlTxtfShQvoQwTWb7d0OO';
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  return category;
}