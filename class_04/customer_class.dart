import 'dokan_class.dart';

class Customer {
  final String name;
  int balance;

  Customer(this.name, this.balance);

  void purchase(int quantity, Dokan dokan) {
    int bill = quantity * dokan.resellPrice;

    if (bill <= balance) {
      bool hasStock = quantity <= dokan.stock;
      dokan.order(quantity);
      if (hasStock) {
        balance = balance - bill;
        print('$name paid $bill taka');
      }
    } else {
      print(
          'Sorry you do not have sufficient balance, you have only $balance taka');
    }
  }
}
