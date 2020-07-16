// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_repository_repo.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$GitHubRepositoryRepo extends GitHubRepositoryRepo {
  _$GitHubRepositoryRepo([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = GitHubRepositoryRepo;

  @override
  Future<Response<Repository>> getFlutterRepo() {
    final $url = '/flutter';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<Repository, Repository>($request);
  }

  @override
  Future<Response<Repository>> getWebsiteRepo() {
    final $url = '/website';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<Repository, Repository>($request);
  }

  @override
  Future<Response<Repository>> getSamplesRepo() {
    final $url = '/samples';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<Repository, Repository>($request);
  }
}
