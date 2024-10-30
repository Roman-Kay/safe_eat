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
  final List<PlaceItem> list;
  final Function()? onPressed;

  ClassOfPlacesItem({
    required this.name,
    required this.list,
    required this.onPressed,
  });
}

class PlaceItem {
  final int id;
  final String name;
  final String food;
  final int lenth;
  final double raiting;
  final double price;
  final double oldPrice;

  PlaceItem({
    required this.id,
    required this.name,
    required this.food,
    required this.lenth,
    required this.raiting,
    required this.price,
    required this.oldPrice,
  });
}
