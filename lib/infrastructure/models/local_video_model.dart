import 'package:toktikapp/domain/entities/video_post.dart';

class LocalVideoModel {
  final String name;
  final String videoUrl;
  final int likes;
  final int views;

  LocalVideoModel(
      {required this.name,
      required this.videoUrl,
      required this.likes,
      required this.views
  });

  factory LocalVideoModel.fromJson(Map<String, dynamic> json) {
    return LocalVideoModel(
        name: json['name'] ?? 'No video name',
        videoUrl: json['videoUrl'],
        likes: json['likes'] ?? 0,
        views: json['views'] ?? 0
    );
  }

  /// Converts this [LocalVideoModel] to a [VideoPost] entity.
  ///
  /// Useful for passing data between layers, e.g. from the infrastructure layer
  /// to the domain layer.
  VideoPost toVideoPostEntity() => VideoPost(
    caption: name,
    videoUrl: videoUrl,
    likes: likes,
    views: views,
  );
}
