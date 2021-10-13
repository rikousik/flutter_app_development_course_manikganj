import 'dokan_class.dart';

class Customer {
  final String name;
  int balance;

  Customer(this.name, this.balance);

  void purchase(Dokan dkn, int quantity) {
    final int bill = dkn.resellPrice * quantity;
    if (bill <= balance) {
      balance = balance - bill;
      dkn.order(quantity);
      print('$name paid $bill');
    } else {
      print('You do not have sufficient balance');
    }
  }

  void checkBalance() {
    print('$name has $balance taka');
  }
}
