void main() {
    List<int> applesPrice = [
    5,7,10,3,15,81,13,15,5,
  ];
  
  
  int totalPrice = 0;
  applesPrice.forEach((apple){
    totalPrice = totalPrice+apple;
  });
  
  print("average: ${totalPrice/applesPrice.length}");

 }
