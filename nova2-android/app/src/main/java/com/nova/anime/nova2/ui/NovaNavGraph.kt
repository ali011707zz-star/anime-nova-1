package com.nova.anime.nova2.ui

import androidx.compose.runtime.Composable
import androidx.navigation.NavType
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.rememberNavController
import androidx.navigation.navArgument
import com.nova.anime.nova2.core.catalog.AnilistRepository
import com.nova.anime.nova2.core.download.DownloadRepository
import com.nova.anime.nova2.core.library.LibraryStore

private const val START = "bootstrap"

@Composable
fun NovaNavGraph(
    repository: AnilistRepository,
    playbackRepository: com.nova.anime.nova2.core.playback.PlaybackRepository,
    libraryStore: LibraryStore,
    downloadRepository: DownloadRepository,
    onSignOut: () -> Unit,
    bootstrapContent: @Composable (onOpenHome: () -> Unit) -> Unit,
) {
    val navController = rememberNavController()
    NavHost(navController = navController, startDestination = START) {
        composable(START) {
            bootstrapContent {
                navController.navigate("home") {
                    popUpTo(START) { inclusive = true }
                }
            }
        }
        composable("home") {
            HomeScreen(
                repository = repository,
                onOpenDetails = { navController.navigate("details/$it") },
                onOpenBrowse = { navController.navigate("browse") },
                onOpenSearch = { navController.navigate("search") },
                onOpenLibrary = { navController.navigate("library") },
                onOpenSettings = { navController.navigate("settings") },
            )
        }
        composable("browse") {
            BrowseScreen(
                repository = repository,
                onOpenDetails = { navController.navigate("details/$it") },
                onBack = { navController.popBackStack() },
            )
        }
        composable("search") {
            SearchScreen(
                repository = repository,
                onOpenDetails = { navController.navigate("details/$it") },
                onBack = { navController.popBackStack() },
            )
        }
        composable(
            route = "details/{id}",
            arguments = listOf(navArgument("id") { type = NavType.IntType }),
        ) { entry ->
            DetailsScreen(
                repository = repository,
                id = entry.arguments?.getInt("id") ?: return@composable,
                libraryStore = libraryStore,
                onOpenEpisodes = { navController.navigate("episodes/$it") },
                onBack = { navController.popBackStack() },
            )
        }
        composable(
            route = "episodes/{id}",
            arguments = listOf(navArgument("id") { type = NavType.IntType }),
        ) { entry ->
            EpisodesScreen(
                repository = repository,
                id = entry.arguments?.getInt("id") ?: return@composable,
                onOpenWatch = { animeId, episode ->
                    navController.navigate("watch/$animeId/$episode")
                },
                onBack = { navController.popBackStack() },
            )
        }
        composable(
            route = "watch/{id}/{episode}",
            arguments = listOf(
                navArgument("id") { type = NavType.IntType },
                navArgument("episode") { type = NavType.IntType },
            ),
        ) { entry ->
            WatchScreen(
                repository = repository,
                playbackRepository = playbackRepository,
                libraryStore = libraryStore,
                downloadRepository = downloadRepository,
                id = entry.arguments?.getInt("id") ?: return@composable,
                episodeNumber = entry.arguments?.getInt("episode") ?: return@composable,
                onBack = { navController.popBackStack() },
            )
        }
        composable("library") {
            LibraryScreen(
                libraryStore = libraryStore,
                downloadRepository = downloadRepository,
                onOpenDetails = { navController.navigate("details/$it") },
                onOpenWatch = { animeId, episode ->
                    navController.navigate("watch/$animeId/$episode")
                },
                onBack = { navController.popBackStack() },
            )
        }
        composable("settings") {
            SettingsScreen(
                libraryStore = libraryStore,
                onSignOut = { onSignOut(); navController.popBackStack() },
                onBack = { navController.popBackStack() },
            )
        }
    }
}