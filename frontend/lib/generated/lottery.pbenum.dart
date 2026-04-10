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

class GameType extends $pb.ProtobufEnum {
  static const GameType UNKNOWN =
      GameType._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const GameType LOTOFACIL =
      GameType._(1, _omitEnumNames ? '' : 'LOTOFACIL');
  static const GameType MEGASENA =
      GameType._(2, _omitEnumNames ? '' : 'MEGASENA');

  static const $core.List<GameType> values = <GameType>[
    UNKNOWN,
    LOTOFACIL,
    MEGASENA,
  ];

  static final $core.List<GameType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static GameType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const GameType._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
