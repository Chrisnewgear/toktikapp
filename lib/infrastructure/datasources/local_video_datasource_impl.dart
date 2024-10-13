import 'package:toktikapp/domain/datasource/video_posts_datadource.dart';
import 'package:toktikapp/domain/entities/video_post.dart';
import 'package:toktikapp/infrastructure/models/local_video_model.dart';
import 'package:toktikapp/shared/data/local_video_post.dart';

class LocalVideoDataSource implements VideoPostDataSource{
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async {

    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts.map(
      (video) => LocalVideoModel.fromJson(video).toVideoPostEntity()
    ).toList();

    return newVideos;
  }

}