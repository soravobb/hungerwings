class Cuisine {
  const Cuisine({
    required this.image,
    required this.title,

  });

  final String image;
  final String title;


  static const cuisines = [
    Cuisine(
        image: "assets/images/pexels-daria-shevtsova-1260968.jpg",
        title: "Offers"),
    Cuisine(
        image: "assets/images/pexels-pixabay-315755.jpg",
        title: "Sri Lankan"),
    Cuisine(
        image: "assets/images/pexels-steve-3789885.jpg",
        title: "Italian"),
    Cuisine(
        image: "assets/images/pexels-valeria-boltneva-842571.jpg",
        title: "indian"),
  ];
}

class PopularRestaurants {
  const PopularRestaurants({
    required this.image,
    required this.title,
    required this.rating,
    required this.description,
    required this.name,

  });

  final String image;
  final String title;
  final String rating;
  final String description;
  final String name;


  static const Popularrestaurants = [
    PopularRestaurants(
        image: "assets/images/pizza.jpg",
        title: "Minute by tuk tuk",
        rating: "4.9",
        description: "(124 ratings) Cafe",
        name: "Western Food"
    ),
    PopularRestaurants(
        image: "assets/images/pizza2.jpg",
        title: "Minute by tuk tuk",
        rating: "4.9",
        description: "(124 ratings) Cafe",
        name: "Western Food"
    ),
    PopularRestaurants(
        image: "assets/images/pizza.jpg",
        title: "Minute by tuk tuk",
        rating: "4.9",
        description: "(124 ratings) Cafe",
        name: "Western Food"
    ),
  ];
}

class MostPopular {
  const MostPopular({
    required this.image,
    required this.title,

  });

  final String image;
  final String title;


  static const Mostpopular = [
    MostPopular(
        image: "assets/images/breakfast-1804457_1280.jpg",
        title: "Cafe de bambaa"),
    MostPopular(
        image: "assets/images/breakfast-1804457_1280.jpg",
        title: "Cafe de bambaa"),
    MostPopular(
        image: "assets/images/breakfast-1804457_1280.jpg",
        title: "Cafe de bambaa"),
    MostPopular(
        image: "assets/images/breakfast-1804457_1280.jpg",
        title: "Cafe de bambaa"),
  ];
}

class RecentItems {
  const RecentItems({
    required this.image,
    required this.title,

  });

  final String image;
  final String title;


  static const Recentitems = [
    RecentItems(
        image: "assets/images/pexels-valeria-boltneva-842571.jpg",
        title: "Mulberry pizza by josh"),
    RecentItems(
        image: "assets/images/pexels-steve-3789885.jpg",
        title: "Barita"),
    RecentItems(
        image: "assets/images/pexels-valeria-boltneva-842571.jpg",
        title: "Pizza Rush Hour"),
    RecentItems(
        image: "assets/images/pexels-steve-3789885.jpg",
        title: "Pizza Rush Hour"),

  ];
}

class DESSERTS {
  const DESSERTS({
    required this.image,
    required this.title,
    required this.name,

  });

  final String image;
  final String title;
  final String name;


  static const DeSSerts = [
    DESSERTS(
        image: "assets/images/desserts1.jpg",
        title: "French Apple Pie",
        name: "Minute by tu Tuk"),
    DESSERTS(
        image: "assets/images/desserts2.jpg",
        title: "Barita",
        name: "Cakes by Tella"),
    DESSERTS(
        image: "assets/images/desserts1.jpg",
        title: "Pizza Rush Hour",
        name: "Cafe Racer"),
    DESSERTS(
        image: "assets/images/desserts4.jpg",
        title: "Pizza Rush Hour",
        name: "Minute by TU TUK"),

  ];
}

