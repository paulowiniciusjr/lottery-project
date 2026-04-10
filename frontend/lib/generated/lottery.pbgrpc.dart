// This is a generated file - do not edit.
//
// Generated from lottery.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'lottery.pb.dart' as $0;

export 'lottery.pb.dart';

@$pb.GrpcServiceName('LotteryService')
class LotteryServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  LotteryServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.GameResponse> generateGame(
    $0.GameRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$generateGame, request, options: options);
  }

  // method descriptors

  static final _$generateGame =
      $grpc.ClientMethod<$0.GameRequest, $0.GameResponse>(
          '/LotteryService/GenerateGame',
          ($0.GameRequest value) => value.writeToBuffer(),
          $0.GameResponse.fromBuffer);
}

@$pb.GrpcServiceName('LotteryService')
abstract class LotteryServiceBase extends $grpc.Service {
  $core.String get $name => 'LotteryService';

  LotteryServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GameRequest, $0.GameResponse>(
        'GenerateGame',
        generateGame_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GameRequest.fromBuffer(value),
        ($0.GameResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GameResponse> generateGame_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.GameRequest> $request) async {
    return generateGame($call, await $request);
  }

  $async.Future<$0.GameResponse> generateGame(
      $grpc.ServiceCall call, $0.GameRequest request);
}
