void main() {
  writeIdentity(
    bloodGroup: 'A+',
    name: 'Kousik',
    occupation: 'Trainer',
  );
}

void writeIdentity(
    {String name = 'N/A',
    String education = 'N/A',
    String occupation = 'N/A',
    int age = 0,
    String bloodGroup = 'N/A'}) {
  print("name: $name");
  print("education: $education");
  print("occupation: $occupation");
  print("age: $age");
  print("bloodGroup: $bloodGroup");
}
