import 'customer_class.dart';
import 'dokan_class.dart';

void main() {
  Dokan d1 = Dokan('Manikganj general store', 50, 30, 10);
  Dokan d2 = Dokan('Dhamrai general store', 60, 30, 20);

  Customer c1 = Customer('Rahim', 600);
  Customer c2 = Customer('Karim', 100);

  c1.purchase(10, d1);
  c2.purchase(1, d2);

  d2.analyzeBusiness();
}
