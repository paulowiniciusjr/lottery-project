// This is a generated file - do not edit.
//
// Generated from lottery.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports
// ignore_for_file: unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use gameTypeDescriptor instead')
const GameType$json = {
  '1': 'GameType',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'LOTOFACIL', '2': 1},
    {'1': 'MEGASENA', '2': 2},
  ],
};

/// Descriptor for `GameType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List gameTypeDescriptor = $convert.base64Decode(
    'CghHYW1lVHlwZRILCgdVTktOT1dOEAASDQoJTE9UT0ZBQ0lMEAESDAoITUVHQVNFTkEQAg==');

@$core.Deprecated('Use gameRequestDescriptor instead')
const GameRequest$json = {
  '1': 'GameRequest',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.GameType', '10': 'type'},
    {'1': 'quantity', '3': 2, '4': 1, '5': 5, '10': 'quantity'},
  ],
};

/// Descriptor for `GameRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gameRequestDescriptor = $convert.base64Decode(
    'CgtHYW1lUmVxdWVzdBIdCgR0eXBlGAEgASgOMgkuR2FtZVR5cGVSBHR5cGUSGgoIcXVhbnRpdH'
    'kYAiABKAVSCHF1YW50aXR5');

@$core.Deprecated('Use gameDescriptor instead')
const Game$json = {
  '1': 'Game',
  '2': [
    {'1': 'numbers', '3': 1, '4': 3, '5': 5, '10': 'numbers'},
  ],
};

/// Descriptor for `Game`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gameDescriptor =
    $convert.base64Decode('CgRHYW1lEhgKB251bWJlcnMYASADKAVSB251bWJlcnM=');

@$core.Deprecated('Use gameResponseDescriptor instead')
const GameResponse$json = {
  '1': 'GameResponse',
  '2': [
    {'1': 'games', '3': 1, '4': 3, '5': 11, '6': '.Game', '10': 'games'},
  ],
};

/// Descriptor for `GameResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gameResponseDescriptor = $convert.base64Decode(
    'CgxHYW1lUmVzcG9uc2USGwoFZ2FtZXMYASADKAsyBS5HYW1lUgVnYW1lcw==');
