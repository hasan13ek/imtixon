class AllRes {
  List<String> Images;
  List<String> FoodsName;
  AllRes({required this.Images, required this.FoodsName});

  static final allres = [
    AllRes(Images: [
      "assets/images/feature2.png",
      "assets/images/homeimg1.png",
      "assets/images/feature4.png"
    ], FoodsName: [
      "McDonald's",
      "Cafe Brichor’s",
      "Fried Rice on Pot"
    ])
  ];
}
