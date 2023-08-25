void main(List<String> args) {
  int r = 5;
  radius(r);
}

radius(int radius) {
  double area;
  double pi = 3.14;
  area = pi * radius * radius;
  print("area of circle :" + area.toString());
}
