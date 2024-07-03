
void main(){
  List bookTitles = ["River and the Source", "Caucasian Chalk Circle", "Betrayal in the City"];
  List? bookPrices = [3000, 250, 450.55, 0, 230.65];
  bookTitles.add(2);
  bookTitles.add("Blossoms of the Savannah");
  print("The Novel, ${bookTitles[4]} costs ${bookPrices[2]}");
  print(bookTitles);
  print(bookTitles.length);
  bookTitles.clear();
  print(bookTitles.length);

  bookPrices = null;
  print(bookPrices);
}