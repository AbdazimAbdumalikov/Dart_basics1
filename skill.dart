//1
void main() {
  var a = 1;
  var b = 10;
  var temp;

  temp = a;
  a = b;
  b = temp;

  print("НОД: $a, НОК:$b");

//2
  int number = 36;
  int key = 136;
  int encrypt = number ^ key;
  print("Зашифрованное число: $encrypt");

//3
  var nums = [5, 7, 8, 'hello'];
  nums.add(7);
  nums.addAll([5, 7, 3, 2]);

  nums.remove('hello');

  print('${nums}');


//4
  var map = {
    1: "Ложка",
    2: "Тарелки",
    3: "Салфетки"};
  print(map);


//5

  void main() {
    words a = words();
    print(a.b('one, two, zero, cat, dog'));
    print('');
  }
}  