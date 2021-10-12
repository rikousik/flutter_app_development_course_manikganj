class Human {
  final String name;
  final int age;
  final String gender;

  Human(this.name, this.age, this.gender);
  void tellIdentity() {
    print('My name is $name, I am $age years old,I am a $gender');
  }
}
class Athlete extends Human {
  final String sports;
  Athlete(String name, int age, String gender, this.sports)
      : super(name, age, gender);

  void ability() {
    print('I can play $sports');
  }
}
void main() {
  Athlete kousik = Athlete('Kousik', 19, 'Male', 'Cricket');
  print(kousik.sports);
}
