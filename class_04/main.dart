import 'customer_class.dart';
import 'dokan_class.dart';

void main() {
  Dokan d1 = Dokan('Manikganj general store', 50, 30, 100);
  Dokan d2 = Dokan('Dhamrai general store', 60, 30, 100);

  Customer cst1 = Customer('Rahim', 100);
  Customer cst2 = Customer('Karim', 200);

  cst1.purchase(d1, 2);
  cst2.purchase(d2, 3);
  print('\n\n');
  cst1.checkBalance();
  cst2.checkBalance();
  print('\n\n');
  d1.analyzeBusiness();
  print('\n\n');
  d2.analyzeBusiness();
}
