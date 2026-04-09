package com.lottery.server

import com.lottery.service.LotteryServiceImpl
import io.grpc.protobuf.services.ProtoReflectionService
import io.grpc.ServerBuilder

fun main() {
    val server = ServerBuilder
        .forPort(9090)
        .addService(LotteryServiceImpl())
        .addService(ProtoReflectionService.newInstance())
        .build()

    server.start()
    println("gRPC server rodando na porta 9090")

    server.awaitTermination()
}