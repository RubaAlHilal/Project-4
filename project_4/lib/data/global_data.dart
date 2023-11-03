import 'package:flutter/material.dart';

import '../models/user_model.dart';
import '../models/watch_model.dart';

late User currentUser;

List<User> usersList = [];

List<Watch> watchesList = [];

// List<Watch> cartItems = [];

ValueNotifier<double> grandTotal = ValueNotifier(0.0);
ValueNotifier<double> itemsTotal = ValueNotifier(0.0);

double discount = 0;
