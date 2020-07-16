import 'package:chopper/chopper.dart';
import 'package:github_issue_tracker/model/repository.dart';
import 'package:github_issue_tracker/repository/model_converter.dart';
import 'header_interceptor.dart';

part 'github_repository_repo.chopper.dart';

@ChopperApi()
abstract class GitHubRepositoryRepo extends ChopperService {

  @Get(path: '/flutter')
  Future<Response<Repository>> getFlutterRepo();

  @Get(path: '/website')
  Future<Response<Repository>> getWebsiteRepo();

  @Get(path: '/samples')
  Future<Response<Repository>> getSamplesRepo();


  static GitHubRepositoryRepo create(String username) {
    final client = ChopperClient(
      baseUrl: 'https://api.github.com/repos/$username',
      interceptors: [HeaderInterceptor(), HttpLoggingInterceptor()],
      converter: ModelConverter(),
      errorConverter: JsonConverter(),
      services: [_$GitHubRepositoryRepo(),],
    );
    return _$GitHubRepositoryRepo(client);
  }
}

