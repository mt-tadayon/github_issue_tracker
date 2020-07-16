// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Repository _$RepositoryFromJson(Map<String, dynamic> json) {
  return _Respotitory.fromJson(json);
}

class _$RepositoryTearOff {
  const _$RepositoryTearOff();

// ignore: unused_element
  _Respotitory call(
      {@required @JsonKey(name: 'name') String name,
      @required @JsonKey(name: 'description') String description,
      @required @JsonKey(name: 'stargazers_count') int stargazersCount,
      @required @JsonKey(name: 'open_issues') int openIssues,
      @required @JsonKey(name: 'issues_url') String issuesUrl}) {
    return _Respotitory(
      name: name,
      description: description,
      stargazersCount: stargazersCount,
      openIssues: openIssues,
      issuesUrl: issuesUrl,
    );
  }
}

// ignore: unused_element
const $Repository = _$RepositoryTearOff();

mixin _$Repository {
  @JsonKey(name: 'name')
  String get name;
  @JsonKey(name: 'description')
  String get description;
  @JsonKey(name: 'stargazers_count')
  int get stargazersCount;
  @JsonKey(name: 'open_issues')
  int get openIssues;
  @JsonKey(name: 'issues_url')
  String get issuesUrl;

  Map<String, dynamic> toJson();
  $RepositoryCopyWith<Repository> get copyWith;
}

abstract class $RepositoryCopyWith<$Res> {
  factory $RepositoryCopyWith(
          Repository value, $Res Function(Repository) then) =
      _$RepositoryCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'stargazers_count') int stargazersCount,
      @JsonKey(name: 'open_issues') int openIssues,
      @JsonKey(name: 'issues_url') String issuesUrl});
}

class _$RepositoryCopyWithImpl<$Res> implements $RepositoryCopyWith<$Res> {
  _$RepositoryCopyWithImpl(this._value, this._then);

  final Repository _value;
  // ignore: unused_field
  final $Res Function(Repository) _then;

  @override
  $Res call({
    Object name = freezed,
    Object description = freezed,
    Object stargazersCount = freezed,
    Object openIssues = freezed,
    Object issuesUrl = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      stargazersCount: stargazersCount == freezed
          ? _value.stargazersCount
          : stargazersCount as int,
      openIssues: openIssues == freezed ? _value.openIssues : openIssues as int,
      issuesUrl: issuesUrl == freezed ? _value.issuesUrl : issuesUrl as String,
    ));
  }
}

abstract class _$RespotitoryCopyWith<$Res>
    implements $RepositoryCopyWith<$Res> {
  factory _$RespotitoryCopyWith(
          _Respotitory value, $Res Function(_Respotitory) then) =
      __$RespotitoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'stargazers_count') int stargazersCount,
      @JsonKey(name: 'open_issues') int openIssues,
      @JsonKey(name: 'issues_url') String issuesUrl});
}

class __$RespotitoryCopyWithImpl<$Res> extends _$RepositoryCopyWithImpl<$Res>
    implements _$RespotitoryCopyWith<$Res> {
  __$RespotitoryCopyWithImpl(
      _Respotitory _value, $Res Function(_Respotitory) _then)
      : super(_value, (v) => _then(v as _Respotitory));

  @override
  _Respotitory get _value => super._value as _Respotitory;

  @override
  $Res call({
    Object name = freezed,
    Object description = freezed,
    Object stargazersCount = freezed,
    Object openIssues = freezed,
    Object issuesUrl = freezed,
  }) {
    return _then(_Respotitory(
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      stargazersCount: stargazersCount == freezed
          ? _value.stargazersCount
          : stargazersCount as int,
      openIssues: openIssues == freezed ? _value.openIssues : openIssues as int,
      issuesUrl: issuesUrl == freezed ? _value.issuesUrl : issuesUrl as String,
    ));
  }
}

@JsonSerializable()
class _$_Respotitory implements _Respotitory {
  const _$_Respotitory(
      {@required @JsonKey(name: 'name') this.name,
      @required @JsonKey(name: 'description') this.description,
      @required @JsonKey(name: 'stargazers_count') this.stargazersCount,
      @required @JsonKey(name: 'open_issues') this.openIssues,
      @required @JsonKey(name: 'issues_url') this.issuesUrl})
      : assert(name != null),
        assert(description != null),
        assert(stargazersCount != null),
        assert(openIssues != null),
        assert(issuesUrl != null);

  factory _$_Respotitory.fromJson(Map<String, dynamic> json) =>
      _$_$_RespotitoryFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'stargazers_count')
  final int stargazersCount;
  @override
  @JsonKey(name: 'open_issues')
  final int openIssues;
  @override
  @JsonKey(name: 'issues_url')
  final String issuesUrl;

  @override
  String toString() {
    return 'Repository(name: $name, description: $description, stargazersCount: $stargazersCount, openIssues: $openIssues, issuesUrl: $issuesUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Respotitory &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.stargazersCount, stargazersCount) ||
                const DeepCollectionEquality()
                    .equals(other.stargazersCount, stargazersCount)) &&
            (identical(other.openIssues, openIssues) ||
                const DeepCollectionEquality()
                    .equals(other.openIssues, openIssues)) &&
            (identical(other.issuesUrl, issuesUrl) ||
                const DeepCollectionEquality()
                    .equals(other.issuesUrl, issuesUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(stargazersCount) ^
      const DeepCollectionEquality().hash(openIssues) ^
      const DeepCollectionEquality().hash(issuesUrl);

  @override
  _$RespotitoryCopyWith<_Respotitory> get copyWith =>
      __$RespotitoryCopyWithImpl<_Respotitory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RespotitoryToJson(this);
  }
}

abstract class _Respotitory implements Repository {
  const factory _Respotitory(
          {@required @JsonKey(name: 'name') String name,
          @required @JsonKey(name: 'description') String description,
          @required @JsonKey(name: 'stargazers_count') int stargazersCount,
          @required @JsonKey(name: 'open_issues') int openIssues,
          @required @JsonKey(name: 'issues_url') String issuesUrl}) =
      _$_Respotitory;

  factory _Respotitory.fromJson(Map<String, dynamic> json) =
      _$_Respotitory.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'stargazers_count')
  int get stargazersCount;
  @override
  @JsonKey(name: 'open_issues')
  int get openIssues;
  @override
  @JsonKey(name: 'issues_url')
  String get issuesUrl;
  @override
  _$RespotitoryCopyWith<_Respotitory> get copyWith;
}
