// This is a generated file - do not edit.
//
// Generated from lottery.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'lottery.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'lottery.pbenum.dart';

class GameRequest extends $pb.GeneratedMessage {
  factory GameRequest({
    GameType? type,
    $core.int? quantity,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (quantity != null) result.quantity = quantity;
    return result;
  }

  GameRequest._();

  factory GameRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GameRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GameRequest',
      createEmptyInstance: create)
    ..aE<GameType>(1, _omitFieldNames ? '' : 'type',
        enumValues: GameType.values)
    ..aI(2, _omitFieldNames ? '' : 'quantity')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GameRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GameRequest copyWith(void Function(GameRequest) updates) =>
      super.copyWith((message) => updates(message as GameRequest))
          as GameRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GameRequest create() => GameRequest._();
  @$core.override
  GameRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GameRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GameRequest>(create);
  static GameRequest? _defaultInstance;

  @$pb.TagNumber(1)
  GameType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(GameType value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get quantity => $_getIZ(1);
  @$pb.TagNumber(2)
  set quantity($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasQuantity() => $_has(1);
  @$pb.TagNumber(2)
  void clearQuantity() => $_clearField(2);
}

class Game extends $pb.GeneratedMessage {
  factory Game({
    $core.Iterable<$core.int>? numbers,
  }) {
    final result = create();
    if (numbers != null) result.numbers.addAll(numbers);
    return result;
  }

  Game._();

  factory Game.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Game.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Game',
      createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'numbers', $pb.PbFieldType.K3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Game clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Game copyWith(void Function(Game) updates) =>
      super.copyWith((message) => updates(message as Game)) as Game;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Game create() => Game._();
  @$core.override
  Game createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Game getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Game>(create);
  static Game? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.int> get numbers => $_getList(0);
}

class GameResponse extends $pb.GeneratedMessage {
  factory GameResponse({
    $core.Iterable<Game>? games,
  }) {
    final result = create();
    if (games != null) result.games.addAll(games);
    return result;
  }

  GameResponse._();

  factory GameResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GameResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GameResponse',
      createEmptyInstance: create)
    ..pPM<Game>(1, _omitFieldNames ? '' : 'games', subBuilder: Game.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GameResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GameResponse copyWith(void Function(GameResponse) updates) =>
      super.copyWith((message) => updates(message as GameResponse))
          as GameResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GameResponse create() => GameResponse._();
  @$core.override
  GameResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GameResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GameResponse>(create);
  static GameResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Game> get games => $_getList(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
