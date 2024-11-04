import 'package:safe_eat/data/foods.dart';
import 'package:safe_eat/utils/modals.dart';

Future<List<ClassOfPlacesItem>> listOfClassOfPlacesItem() async {
  List<ClassOfPlacesItem> listOfClassOfPlacesItem = [
    ClassOfPlacesItem(
      name: 'Рекомендации для вас',
      list: await listOfRecomendationItems(),
    ),
    ClassOfPlacesItem(
      name: 'Исследуйте новые места',
      list: await listOfNewItems(),
    ),
    ClassOfPlacesItem(
      name: 'Избранное',
      list: await listOfFavoritesItems(),
    ),
  ];

  return listOfClassOfPlacesItem;
}

Future<List<FoodItem>> listOfRecomendationItems() async {
  List<int> listOfRecomendationId = [1, 2, 3, 1];
  return list(listOfRecomendationId);
}

Future<List<FoodItem>> listOfNewItems() async {
  List<int> listOfNewId = [2, 3, 1, 3, 2];

  return list(listOfNewId);
}

Future<List<FoodItem>> listOfFavoritesItems() async {
  List<int> listOfFavoritesId = [3, 1, 2, 3, 1, 2];
  print(await list(listOfFavoritesId)[0].title);
  return await list(listOfFavoritesId);
}

list(List<int> listIds) async {
  List<FoodItem> newList = List.generate(
    listIds.length,
    (int index) {
      return Foods.listOfAllFoods.where((var placeItem) => listIds[index] == placeItem.id).first;
    },
  );
  return newList;
}
