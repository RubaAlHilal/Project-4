import '../models/user_model.dart';
import '../models/watch_model.dart';

late User currentUser;

List<User> usersList = [];

List<Watch> watchesList = [];

List<Watch> cartList = [];

double discount = 0;
num grandTotal = 0;
// double itemsTotal = 0;

void calculateGlobalPrice() {
  grandTotal = 0;
  for (var element in cartList) {
    grandTotal += element.itemsTotal * element.price;
  }
}
