import 'details_class.dart';

void main() {
  Dokan d1 = Dokan('Manikganj general store', 50, 30, 100);

  d1.analyzeBusiness();
  d1.order(5);
  d1.order(6);
  d1.order(3);
  d1.analyzeBusiness();
  d1.order(90);
}
