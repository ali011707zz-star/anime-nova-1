.class public abstract synthetic Landroidx/media3/session/MediaController$Listener$-CC;
.super Ljava/lang/Object;
.source "MediaController.java"


# direct methods
.method public static $default$onAvailableSessionCommandsChanged(Landroidx/media3/session/MediaController$Listener;Landroidx/media3/session/MediaController;Landroidx/media3/session/SessionCommands;)V
    .locals 0

    .line 505
    return-void
.end method

.method public static $default$onCustomCommand(Landroidx/media3/session/MediaController$Listener;Landroidx/media3/session/MediaController;Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 525
    new-instance p0, Landroidx/media3/session/SessionResult;

    const/4 p1, -0x6

    invoke-direct {p0, p1}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static $default$onCustomLayoutChanged(Landroidx/media3/session/MediaController$Listener;Landroidx/media3/session/MediaController;Ljava/util/List;)V
    .locals 0

    .line 477
    return-void
.end method

.method public static $default$onDisconnected(Landroidx/media3/session/MediaController$Listener;Landroidx/media3/session/MediaController;)V
    .locals 0

    .line 436
    return-void
.end method

.method public static $default$onError(Landroidx/media3/session/MediaController$Listener;Landroidx/media3/session/MediaController;Landroidx/media3/session/SessionError;)V
    .locals 0

    .line 566
    return-void
.end method

.method public static $default$onExtrasChanged(Landroidx/media3/session/MediaController$Listener;Landroidx/media3/session/MediaController;Landroid/os/Bundle;)V
    .locals 0

    .line 534
    return-void
.end method

.method public static $default$onMediaButtonPreferencesChanged(Landroidx/media3/session/MediaController$Listener;Landroidx/media3/session/MediaController;Ljava/util/List;)V
    .locals 0

    .line 496
    return-void
.end method

.method public static $default$onSessionActivityChanged(Landroidx/media3/session/MediaController$Listener;Landroidx/media3/session/MediaController;Landroid/app/PendingIntent;)V
    .locals 0

    .line 545
    return-void
.end method

.method public static $default$onSetCustomLayout(Landroidx/media3/session/MediaController$Listener;Landroidx/media3/session/MediaController;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 455
    new-instance p0, Landroidx/media3/session/SessionResult;

    const/4 p1, -0x6

    invoke-direct {p0, p1}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method
