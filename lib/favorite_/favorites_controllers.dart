import 'package:get/get.dart';

class FavoritesController extends GetxController {
  final RxList<int> _favorites = <int>[].obs;
  bool isFavorite(int index) => _favorites.contains(index);
  void toggleFavorite(int index) {
    if (_favorites.contains(index)) {
      _favorites.remove(index);
    } else {
      _favorites.add(index);
    }
  }
  List<int> get favorites => _favorites;

}
class FavoritesControllert extends GetxController {
  var favorites = <int>[].obs;

  void toggleFavorite(int index) {
    if (favorites.contains(index)) {
      favorites.remove(index);
    } else {
      favorites.add(index);
    }
  }

  bool isFavorite(int index) {
    return favorites.contains(index);
  }
}