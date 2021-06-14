import 'package:flutter/material.dart';

class Vendors {
  final String id;
  final String name;
  final double rating;
  final Map<String,List<String>> mealprepared;

  const Vendors({
    required this.id,
    required this.name,
    required this.rating,
    required this.mealprepared,
  });
}
