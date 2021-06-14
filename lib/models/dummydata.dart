import 'package:flutter/material.dart';

import '../models/vendors.dart';

const DUMMY_DATA = const [
  Vendors(
    id: "v1",
    name: "Abhijeet",
    rating: 4.5,
    mealprepared: {
      "Breakfast": ["Dosa", "Paneer", "Kadhi", "Chai-Biscut"],
      "Lunch": ["Dosa", "Paneer", "Kadhi", "Chai-Biscut"],
      "Dinner": ["Dosa", "Paneer", "Kadhi", "Chai-Biscut"]
    },
  ),
  Vendors(
    id: "v2",
    name: "Abhishek",
    rating: 4.1,
    mealprepared: {
      "Breakfast": ["Dosa", "Paneer", "Kadhi", "Chai-Biscut"],
      "Lunch": ["Dosa", "Paneer", "Kadhi", "Chai-Biscut"],
      "Dinner": ["Dosa", "Paneer", "Kadhi", "Chai-Biscut"]
    },
  ),
  Vendors(
    id: "v3",
    name: "Aniket",
    rating: 2.5,
    mealprepared: {
      "Breakfast": ["Dosa", "Paneer", "Kadhi", "Chai-Biscut"],
      "Lunch": ["Dosa", "Paneer", "Kadhi", "Chai-Biscut"],
      "Dinner": ["Dosa", "Paneer", "Kadhi", "Chai-Biscut"]
    },
  ),
];
