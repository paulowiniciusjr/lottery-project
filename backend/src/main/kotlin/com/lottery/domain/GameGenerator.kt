package com.lottery.domain

import kotlin.random.Random

object GameGenerator {

    fun generateLotofacil(): List<Int> =
        generateNumbers(15, 1, 25)

    fun generateMegaSena(): List<Int> =
        generateNumbers(6, 1, 60)

    private fun generateNumbers(count: Int, min: Int, max: Int): List<Int> {
        return generateSequence {
            Random.nextInt(min, max + 1)
        }
            .distinct()
            .take(count)
            .toList()
            .sorted()
    }
}