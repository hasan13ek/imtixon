class ByTeamModels{
  List<String> Images;
  List<String> FoodsName;

  ByTeamModels({required this.Images,required this.FoodsName});
  static final byteam = [
    ByTeamModels(Images: [
      "assets/images/by1.png",
      "assets/images/by2.png",
      "assets/images/feature2.png"
    ],
      FoodsName: [
        "McDonald’s",
        "The Halal Guys",
        "Cookie Sandwich"
      ],
    ),
  ];
}