class FeaturedModels {
  List<String> images;
  List<String> FoodsName;

  FeaturedModels({required this.images, required this.FoodsName});

  static final featuremodels = [
    FeaturedModels(
      images: [
        "assets/images/feature1.png",
        "assets/images/feature2.png",
        "assets/images/feature3.png",
        "assets/images/feature4.png",
      ],
      FoodsName: [
        "Daylight Coffee",
        "Mario Italiano",
        "Cookie Sandwich",
        "Chow Fun"
      ],
    )
  ];
}
