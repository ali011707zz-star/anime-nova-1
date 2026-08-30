package com.nova.anime.nova2.ui

import androidx.compose.runtime.Composable
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.rememberNavController

private const val START = "bootstrap"

@Composable
fun NovaNavGraph(content: @Composable () -> Unit) {
    val navController = rememberNavController()
    NavHost(navController = navController, startDestination = START) {
        composable(START) {
            content()
        }
    }
}