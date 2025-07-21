class Values {
  String? text;
  String? name;
  String? image; // New image field

  Values(
    this.text,
    this.name,
    this.image, // Add image to constructor
  );
}

List<Values> val = [
  Values("Text 1", "Name 1", "assets/img1.jpg"),
  Values("Text 2", "Name 2", "assets/img2.jpg"),
  Values("Text 3", "Name 3", "assets/img3.jpg"),
  Values("Text 4", "Name 4", "assets/img2.jpg"),
];
