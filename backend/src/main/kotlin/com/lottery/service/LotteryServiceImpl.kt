package com.lottery.service

import com.lottery.*
import com.lottery.domain.GameGenerator
import io.grpc.stub.StreamObserver

class LotteryServiceImpl : LotteryServiceGrpc.LotteryServiceImplBase() {

    override fun generateGame(
        request: GameRequest,
        responseObserver: StreamObserver<GameResponse>
    ) {

        val games = (1..request.quantity).map {
            val numbers = when (request.type) {
                GameType.LOTOFACIL -> GameGenerator.generateLotofacil()
                GameType.MEGASENA -> GameGenerator.generateMegaSena()
                else -> throw IllegalArgumentException("Tipo inválido")
            }

            Game.newBuilder()
                .addAllNumbers(numbers)
                .build()
        }

        val response = GameResponse.newBuilder()
            .addAllGames(games)
            .build()

        responseObserver.onNext(response)
        responseObserver.onCompleted()
    }
}