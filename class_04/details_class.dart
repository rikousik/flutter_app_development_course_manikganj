class Dokan {
  final String name;
  final int resellPrice;
  final int wholeSalePrice;
  int stock;
  int productSold = 0;
  int cashBox = 0;

  Dokan(this.name, this.resellPrice, this.wholeSalePrice, this.stock);

  void order(int quantity) {
    if (quantity <= stock) {
      int totalBill = quantity * resellPrice;
      print('Your order placed successfully,please pay $totalBill.');
      productSold = productSold + quantity;
      cashBox = cashBox + totalBill;
      stock = stock - quantity;
    } else {
      print('Sorry product is out of stock');
    }
  }

  void analyzeBusiness() {
    int capital = productSold * wholeSalePrice;
    print(
        'Welcome to $name\nStock: $stock,\nYou have sold: $productSold,\nyour capital: $capital,\nyour current balance: $cashBox,\nYour profit: ${cashBox - capital}');
  }
}
