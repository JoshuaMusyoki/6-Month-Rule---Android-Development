void main(){
  printCost(itemName: "Watch", price: 400);
  printCost(price: 500, itemName: "Fast Charger");
  printCost(price: 400.50, itemName: null);

  area(40, 50.50);
  print(area(40, 50.50));
  print(perimeter(60, 100));
}
void printCost({required double price, String? itemName}){
  print("The cost of $itemName is $price");
}

double area(length, width) =>
   length*width;

int perimeter(length, width){
  return (length + width)*2;
}
