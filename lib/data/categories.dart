import 'package:safe_eat/utils/modals.dart';

List<ClassOfPlacesItem> listOfClassOfCategoriesItem = [
  ClassOfPlacesItem(
    name: 'Рекомендации для вас',
    list: [
      FoodItem(
        id: 1,
        name: 'Пакет с продуктами',
        title: 'Помодоры, огурцы, свинина, сосиски, молоко',
        place: PlaceItem(
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
        length: 4,
        dateStart: 'С 8:00',
        dateEnd: 'До 23:00',
        price: 490,
        oldPrice: 789,
        map: 'Карамышевская наб., 26, корп. 1, Москва',
      ),
      FoodItem(
        id: 3,
        name: 'Выпечка',
        title: 'Круассан с кремом',
        price: 55,
        oldPrice: 100,
        length: 8,
        dateStart: 'с 19:00',
        dateEnd: 'до 20:30',
        place: PlaceItem(
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
        map: 'Улица Пушкина дома Калатушкина',
      ),
      FoodItem(
        id: 4,
        name: 'Комплект блюд «сюрприз»',
        title: 'Курица в томатном соусе, микс из свежих листьев, отварной картофель, ванильные пирожные, лимонад,',
        price: 500,
        oldPrice: 684,
        length: 2,
        dateStart: 'с 9:00',
        dateEnd: 'до 12:30',
        place: PlaceItem(
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
        map: 'Чкаловская ул., 109, корп. 3, Москва',
      ),
    ],
  ),
  ClassOfPlacesItem(
    name: 'Исследуйте новые места',
    list: [
      FoodItem(
        id: 4,
        name: 'Комплект блюд «сюрприз»',
        title: 'Курица в томатном соусе, микс из свежих листьев, отварной картофель, ванильные пирожные, лимонад,',
        price: 500,
        oldPrice: 684,
        length: 2,
        dateStart: 'с 9:00',
        dateEnd: 'до 12:30',
        place: PlaceItem(
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
        map: 'Чкаловская ул., 109, корп. 3, Москва',
      ),
      FoodItem(
        id: 1,
        name: 'Пакет с продуктами',
        title: 'Помодоры, огурцы, свинина, сосиски, молоко',
        place: PlaceItem(
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
        length: 4,
        dateStart: 'С 8:00',
        dateEnd: 'До 23:00',
        price: 490,
        oldPrice: 789,
        map: 'Карамышевская наб., 26, корп. 1, Москва',
      ),
      FoodItem(
        id: 3,
        name: 'Выпечка',
        title: 'Круассан с кремом',
        price: 55,
        oldPrice: 100,
        length: 8,
        dateStart: 'с 19:00',
        dateEnd: 'до 20:30',
        place: PlaceItem(
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
        map: 'Улица Пушкина дома Калатушкина',
      ),
      FoodItem(
        id: 4,
        name: 'Комплект блюд «сюрприз»',
        title: 'Курица в томатном соусе, микс из свежих листьев, отварной картофель, ванильные пирожные, лимонад,',
        price: 500,
        oldPrice: 684,
        length: 2,
        dateStart: 'с 9:00',
        dateEnd: 'до 12:30',
        place: PlaceItem(
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
        map: 'Чкаловская ул., 109, корп. 3, Москва',
      ),
    ],
  ),
  ClassOfPlacesItem(
    name: 'Избранное',
    list: [],
  ),
];

// listOfClassOfPlacesItemFunction() {
//   listOfClassOfPlacesItem = [
//     ClassOfPlacesItem(
//       name: 'Рекомендации для вас',
//       list: listOfRecomendationItems(),
//     ),
//     ClassOfPlacesItem(
//       name: 'Исследуйте новые места',
//       list: listOfNewItems(),
//     ),
//     ClassOfPlacesItem(
//       name: 'Избранное',
//       list: listOfFavoritesItems(),
//     ),
//   ];
// }

// List<FoodItem> listOfRecomendationItems() {
//   List<int> listOfRecomendationId = [1, 2, 3, 1];
//   return list(listOfRecomendationId);
// }

// List<FoodItem> listOfNewItems() {
//   List<int> listOfNewId = [2, 3, 1, 3, 2];

//   return list(listOfNewId);
// }

// List<FoodItem> listOfFavoritesItems() {
//   List<int> listOfFavoritesId = [3, 1, 2, 3, 1, 2];
//   return list(listOfFavoritesId);
// }

// list(List<int> listIds) {
//   List<FoodItem> newList = List.generate(
//     listIds.length,
//     (int index) {
//       return Foods.listOfAllFoods.where((var placeItem) => listIds[index] == placeItem.id).first;
//     },
//   );
//   return newList;
// }
