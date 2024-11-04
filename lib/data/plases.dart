import 'package:safe_eat/utils/modals.dart';

abstract class Places {
  static List<PlaceItem> listOfAllPlaces = [
    PlaceItem(
      id: 1,
      name: 'Дикси',
      reviewItems: [
        ReviewItem(
          raiting: 5,
          nameClient: 'Андрей Ш.',
          date: '2 дня назад',
          text: 'Круто',
        ),
        ReviewItem(
          raiting: 4,
          nameClient: 'Ваня К.',
          date: '1 день назад',
          text: 'Норм',
        ),
        ReviewItem(
          raiting: 5,
          nameClient: 'Ваня К.',
          date: '5 дней назад',
          text:
              'Все очень понравилось. Дллиный отзыв даллфовтыт отаушовытл льаотвоатоввьыбдлоатыльвфл оатьлвылоримт огатм лаьвч отль отьл о тшкаувьаывавыаы',
        ),
        ReviewItem(
          raiting: 5,
          nameClient: 'Андрей Ш.',
          date: '2 дня назад',
          text: 'Круто',
        ),
        ReviewItem(
          raiting: 4,
          nameClient: 'Ваня К.',
          date: '1 день назад',
          text: 'Норм',
        ),
        ReviewItem(
          raiting: 5,
          nameClient: 'Ваня К.',
          date: '5 дней назад',
          text:
              'Все очень понравилось. Дллиный отзыв даллфовтыт отаушовытл льаотвоатоввьыбдлоатыльвфл оатьлвылоримт огатм лаьвч отль отьл о тшкаувьаывавыаы',
        ),
      ],
    ),
    PlaceItem(
      id: 2,
      name: 'Вкусная пышка',
      reviewItems: [
        ReviewItem(
          raiting: 2,
          nameClient: 'Дарья М.',
          date: '3 дня назад',
          text: 'Нe вкусно',
        ),
        ReviewItem(
          raiting: 1,
          nameClient: 'Анна Л.',
          date: '4 дня назад',
          text: 'Хамы!',
        ),
        ReviewItem(
          raiting: 1,
          nameClient: 'Дарья М.',
          date: '2 недели назад',
          text: 'Тараканы',
        ),
        ReviewItem(
          raiting: 1,
          nameClient: 'Анна Л.',
          date: '4 дня назад',
          text: 'Хамл!',
        ),
      ],
    ),
    PlaceItem(
      id: 3,
      name: 'Кулинарная лавка',
      reviewItems: [
        ReviewItem(
          raiting: 4,
          nameClient: 'Дарья М.',
          date: '3 дня назад',
          text: 'Очень вкусно, разнообразие блюд',
        ),
        ReviewItem(
          raiting: 5,
          nameClient: 'Анна Л.',
          date: '4 дня назад',
          text: 'Давно покупаю, вкусные обеды',
        ),
      ],
    ),
  ];
  PlaceItem getPlaceItem(int id) {
    return listOfAllPlaces.where((var placeItem) => id == placeItem.id).first;
  }

  // double getaVerageValue(PlaceItem placeItem) {
  //   double allRaiting = 0;
  //   for (var item in placeItem.raytingItems) {
  //     allRaiting = allRaiting + item.raiting;
  //   }
  //   allRaiting = allRaiting / placeItem.raytingItems.length;
  //   return allRaiting;
  // }
}
