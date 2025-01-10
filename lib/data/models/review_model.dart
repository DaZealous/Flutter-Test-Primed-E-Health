class ReviewModel {
  final String user;
  final String comment;
  final int rating;

  ReviewModel({
    required this.user,
    required this.comment,
    required this.rating,
  });

  factory ReviewModel.fromJson(Map<String, dynamic> json) {
    return ReviewModel(
      user: json['user'],
      comment: json['comment'],
      rating: json['rating'],
    );
  }
}
