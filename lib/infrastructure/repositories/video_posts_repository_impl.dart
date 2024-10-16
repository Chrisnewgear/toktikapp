import 'package:toktikapp/domain/datasource/video_posts_datadource.dart';
import 'package:toktikapp/domain/entities/video_post.dart';
import 'package:toktikapp/domain/repositories/video_posts_repository.dart';

class VideoPostsRepositoryImpl implements VideoPostRepository {
  final VideoPostDataSource videosDataSource;

  VideoPostsRepositoryImpl({
    required this.videosDataSource
  });

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videosDataSource.getTrendingVideosByPage(page);
  }

}