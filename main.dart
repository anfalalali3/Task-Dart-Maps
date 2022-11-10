void main() {
  Map<String, dynamic> menu = {
    'burger': 6.5,
    'pizza': 5,
    'water': 1.5,
  };
  menu["chocolate cake"] = 3.0;
  menu["water"] = 0.75;
  print("Menu:");
  for (var item in menu.entries) {
    print("${item.key}-> ${item.value}KD");
  }

  const order = ['pizza', 'water'];
  double total = 0;
  order.forEach((item) => menu[item] != null
      ? total += menu[item]
      : print("$item is not on the menu!"));

  order.forEach((item) {
    if (menu[item] != null) {
      total += menu[item];
    } else {
      print("$item is not on the menu!");
    }
  });
  print("the total is ${total}KD");
}
