class Rectangle {
  num left, top, width, height;

  Rectangle(this.left, this.top, this.width, this.height);

  num get right => left + width;
  set right(num value) => left = value - width;
  num get bottom => top + height;
  set bottom(num value) => top = value - height;
}

void main() {
  Rectangle rectangle = Rectangle(10, 20, 30, 40);
  print(rectangle.right);
  print(rectangle.bottom);
  rectangle.right = 100;
  rectangle.bottom = 200;
  print(rectangle.right);
  print(rectangle.bottom);
}
