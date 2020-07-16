// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'issue.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Issue _$IssueFromJson(Map<String, dynamic> json) {
  return _Issue.fromJson(json);
}

class _$IssueTearOff {
  const _$IssueTearOff();

// ignore: unused_element
  _Issue call(
      {@required @JsonKey(name: 'title') String title,
      @required @JsonKey(name: 'state') String state,
      @required @JsonKey(name: 'created_at') String createdAt}) {
    return _Issue(
      title: title,
      state: state,
      createdAt: createdAt,
    );
  }
}

// ignore: unused_element
const $Issue = _$IssueTearOff();

mixin _$Issue {
  @JsonKey(name: 'title')
  String get title;
  @JsonKey(name: 'state')
  String get state;
  @JsonKey(name: 'created_at')
  String get createdAt;

  Map<String, dynamic> toJson();
  $IssueCopyWith<Issue> get copyWith;
}

abstract class $IssueCopyWith<$Res> {
  factory $IssueCopyWith(Issue value, $Res Function(Issue) then) =
      _$IssueCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'state') String state,
      @JsonKey(name: 'created_at') String createdAt});
}

class _$IssueCopyWithImpl<$Res> implements $IssueCopyWith<$Res> {
  _$IssueCopyWithImpl(this._value, this._then);

  final Issue _value;
  // ignore: unused_field
  final $Res Function(Issue) _then;

  @override
  $Res call({
    Object title = freezed,
    Object state = freezed,
    Object createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      state: state == freezed ? _value.state : state as String,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
    ));
  }
}

abstract class _$IssueCopyWith<$Res> implements $IssueCopyWith<$Res> {
  factory _$IssueCopyWith(_Issue value, $Res Function(_Issue) then) =
      __$IssueCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'state') String state,
      @JsonKey(name: 'created_at') String createdAt});
}

class __$IssueCopyWithImpl<$Res> extends _$IssueCopyWithImpl<$Res>
    implements _$IssueCopyWith<$Res> {
  __$IssueCopyWithImpl(_Issue _value, $Res Function(_Issue) _then)
      : super(_value, (v) => _then(v as _Issue));

  @override
  _Issue get _value => super._value as _Issue;

  @override
  $Res call({
    Object title = freezed,
    Object state = freezed,
    Object createdAt = freezed,
  }) {
    return _then(_Issue(
      title: title == freezed ? _value.title : title as String,
      state: state == freezed ? _value.state : state as String,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
    ));
  }
}

@JsonSerializable()
class _$_Issue implements _Issue {
  const _$_Issue(
      {@required @JsonKey(name: 'title') this.title,
      @required @JsonKey(name: 'state') this.state,
      @required @JsonKey(name: 'created_at') this.createdAt})
      : assert(title != null),
        assert(state != null),
        assert(createdAt != null);

  factory _$_Issue.fromJson(Map<String, dynamic> json) =>
      _$_$_IssueFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'state')
  final String state;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;

  @override
  String toString() {
    return 'Issue(title: $title, state: $state, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Issue &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(createdAt);

  @override
  _$IssueCopyWith<_Issue> get copyWith =>
      __$IssueCopyWithImpl<_Issue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_IssueToJson(this);
  }
}

abstract class _Issue implements Issue {
  const factory _Issue(
      {@required @JsonKey(name: 'title') String title,
      @required @JsonKey(name: 'state') String state,
      @required @JsonKey(name: 'created_at') String createdAt}) = _$_Issue;

  factory _Issue.fromJson(Map<String, dynamic> json) = _$_Issue.fromJson;

  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'state')
  String get state;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  _$IssueCopyWith<_Issue> get copyWith;
}
