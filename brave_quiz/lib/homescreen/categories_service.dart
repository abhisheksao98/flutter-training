import 'package:brave_quiz/homescreen/categories.dart';

class CategoriesService {
  List<Categories> getCategories() {
    List<Categories> categories = [
      Categories(
        name: 'Science',
        imageurl:
            'https://upload.wikimedia.org/wikipedia/commons/8/88/P_Science.png',
      ),
      Categories(
        name: 'English',
        imageurl:
            'https://images.vexels.com/media/users/3/201997/isolated/preview/ea210d04b9b9a0c0b3f65da99c46c228-english-book-flat.png',
      ),
      Categories(
        name: 'Knowledge',
        imageurl:
            'https://www.pngall.com/wp-content/uploads/10/Knowledge-PNG.png',
      ),
      Categories(
        name: 'Mathematics',
        imageurl: 'https://cdn-icons-png.flaticon.com/512/746/746960.png',
      ),
    ];
    return categories;
  }
}
