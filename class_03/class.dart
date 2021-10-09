class Human {
  final String name;
  final int age;
  final String gender;

  Human(this.name, this.age, this.gender);

  void printIdentity() {
    print("my name is $name, my age is $age, I am $gender");
  }
}

class Student extends Human {
  String dept;
  int roll;
  Student(this.dept, this.roll, String name, int age, String gender)
      : super(name, age, gender);

  void printStudentIdentity() {
    print('Dept: $dept, roll: $roll');
  }
}

void main() {
  Human rahim = Human('Rahim', 21, 'Male');
  Human karim = Human('Karim,', 25, 'Male');

  Student masum = Student('Science', 3, 'Masum', 19, 'Male');
  Student nasima = Student('Commerce', 2, 'Nasima', 20, 'Female');

  masum.printStudentIdentity();
  masum.printIdentity();
}
