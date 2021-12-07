import 'dart:async';
import 'dart:math';

void main() {
  var rng = Random();
  void printGreen(String text) {
    print('\x1B[32m$text\x1B[32m');
  }

  List<int> l() => List.generate(65, (_) => rng.nextInt(2));
  const oneSec = Duration(milliseconds: 100);
  Timer timer = Timer.periodic(oneSec, (Timer t) => printGreen(l().join(' ')));

  Future.delayed(const Duration(seconds: 25), () {
    timer.cancel();
  });
}
