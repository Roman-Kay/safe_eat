import 'package:safe_eat/utils/modals.dart';

abstract class Places {
  static List<PlaceItem> listOfAllItems = [
    PlaceItem(
      id: 1,
      name: 'Дикси',
      food: 'Пакет с продуктами',
      lenth: 4,
      raiting: 4.5,
      price: 490,
      oldPrice: 789,
    ),
    PlaceItem(
      id: 2,
      name: 'Тамада',
      food: 'Обед',
      lenth: 3,
      raiting: 4.3,
      price: 690,
      oldPrice: 989,
    ),
    PlaceItem(
      id: 3,
      name: 'Кулинарная лавка',
      food: 'Выпечка',
      lenth: 8,
      raiting: 4.7,
      price: 390,
      oldPrice: 694,
    ),
  ];
  static List<int> listOfRecomendationId = [1, 2, 3, 1];

  static List<PlaceItem> listOfRecomendationItems = List.generate(
    listOfRecomendationId.length,
    (int index) {
      return listOfAllItems.where((var placeItem) => listOfRecomendationId[index] == placeItem.id).first;
    },
  );
  static List<int> listOfNewId = [2, 3, 1, 3, 2];

  static List<PlaceItem> listOfNewItems = List.generate(
    listOfRecomendationId.length,
    (int index) {
      return listOfAllItems.where((var placeItem) => listOfNewId[index] == placeItem.id).first;
    },
  );
  static List<int> listOfFavoritesId = [3, 1, 2, 3, 1, 2];

  static List<PlaceItem> listOfFavoritesItems = List.generate(
    listOfRecomendationId.length,
    (int index) {
      return listOfAllItems.where((var placeItem) => listOfFavoritesId[index] == placeItem.id).first;
    },
  );
}
