class Dokan {
  final String name;
  final int resellPrice;
  final int wholesalePrice;
  int stock;
  int productSold = 0;
  int cashBox = 0;

  Dokan(this.name, this.resellPrice, this.wholesalePrice, this.stock);

  void order(int quantity) {
    if (quantity <= stock) {
      int totalBill = quantity * resellPrice;
      print(
          'Order pleaced successfully, your bill is $totalBill taka for $quantity products');

      stock = stock - quantity;
      productSold = productSold + quantity;
      cashBox = cashBox + totalBill;
    } else {
      print('Sorry product is out of stock');
    }
  }

  void analyzeBusiness() {
    if (productSold > 0) {
      int capital = productSold * wholesalePrice;
      print('Welcome to $name');
      print('stock: $stock');
      print('sold: $productSold');
      print('balance: $cashBox');
      print('total profit: ${cashBox - capital}');
    } else {
      print('Sorry, you could not sell any product');
    }
  }
}
