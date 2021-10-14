import 'customer_class.dart';
import 'dokan_class.dart';

void main() {
  Dokan d1 = Dokan('Manikganj general store', 50, 30, 3);
  Dokan d2 = Dokan('Dhamrai general store', 60, 30, 3);

  Customer cstm1 = Customer('Shawon', 100);
  Customer cstm2 = Customer('Masum', 200);

  cstm1.purchase(d1, 1);
  cstm1.checkBalance();
  d1.analyzeBusiness();

  cstm2.purchase(d2, 3);
  cstm2.checkBalance();
  d2.analyzeBusiness();
}
