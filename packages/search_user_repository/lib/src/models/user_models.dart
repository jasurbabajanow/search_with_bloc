class UserModels {
  final String? username;
  final String? url;
  final String? images;

  UserModels({
    this.username,
    this.url,
    this.images,
  });

  factory UserModels.fromJson(Map<String, dynamic> json) {
    return UserModels(
      username: json['username'],
      url: json['url'],
      images: json['images']?['jpg']['image_url'],
    );
  }
}
