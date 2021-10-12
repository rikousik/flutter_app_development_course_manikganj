import 'details_class.dart';

void main() {
  Dokan d1 = Dokan('Murad Genral Store', 50, 30, 100);

  //d1.analyzeBusiness();

  d1.order(5);
  d1.order(15);
  d1.order(2);
  d1.order(80);
  d1.analyzeBusiness();
}
