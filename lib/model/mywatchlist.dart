class MyWatchlist {
  String title;
  String releaseDate;
  int rating;
  String review;
  bool isWatched;

  MyWatchlist(
      {required this.title,
      required this.releaseDate,
      required this.rating,
      required this.review,
      required this.isWatched});

  factory MyWatchlist.fromJson(Map<String, dynamic> data) => MyWatchlist(
        title: data["fields"]["title"],
        releaseDate: data["fields"]["release_date"],
        rating: data["fields"]["rating"],
        review: data["fields"]["review"],
        isWatched: data["fields"]["watched"],
      );

  Map<String, dynamic> toJson() => {"title": title};
}
