import 'package:flutter/material.dart';

class NavItem {
  final String text;
  final String svg;
  final int index;
  final Widget screen;

  NavItem({
    required this.text,
    required this.svg,
    required this.index,
    required this.screen,
  });
}

class ClassOfPlacesItem {
  final String name;
  final List<FoodItem> list;

  ClassOfPlacesItem({
    required this.name,
    required this.list,
  });
}

class FoodItem {
  final int id;
  final String name;
  final String title;
  final double price;
  final double oldPrice;
  final int length;
  final String dateStart;
  final String dateEnd;
  final String map;
  final PlaceItem place;

  FoodItem({
    required this.id,
    required this.name,
    required this.title,
    required this.price,
    required this.oldPrice,
    required this.length,
    required this.dateStart,
    required this.dateEnd,
    required this.map,
    required this.place,
  });
}

class PlaceItem {
  final int id;
  final String name;
  final List<ReviewItem> reviewItems;

  PlaceItem({
    required this.id,
    required this.name,
    required this.reviewItems,
  });
}

class ReviewItem {
  final int raiting;
  final String nameClient;
  final String date;
  final String text;

  ReviewItem({
    required this.raiting,
    required this.nameClient,
    required this.date,
    required this.text,
  });
}
