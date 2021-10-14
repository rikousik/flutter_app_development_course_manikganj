import 'dokan_class.dart';

class Customer {
  final String name;
  int balance;

  Customer(this.name, this.balance);

  void purchase(Dokan dkn, int quantity) {
    int bill = dkn.resellPrice * quantity;

    if (bill <= balance && quantity <= dkn.stock) {
      dkn.order(quantity);
      balance = balance - bill;
      print('$name paid $bill taka');
    } else {
      print('Sorry you cannot buy this product');
    }
  }

  void checkBalance() {
    print('$name has $balance taka');
  }
}
