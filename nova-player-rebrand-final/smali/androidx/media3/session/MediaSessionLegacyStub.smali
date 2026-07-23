.class Landroidx/media3/session/MediaSessionLegacyStub;
.super Landroidx/media3/session/legacy/MediaSessionCompat$Callback;
.source "MediaSessionLegacyStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/MediaSessionLegacyStub$LegacyError;,
        Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;,
        Landroidx/media3/session/MediaSessionLegacyStub$ConnectionTimeoutHandler;,
        Landroidx/media3/session/MediaSessionLegacyStub$MediaButtonReceiver;,
        Landroidx/media3/session/MediaSessionLegacyStub$Api31;,
        Landroidx/media3/session/MediaSessionLegacyStub$SessionTask;,
        Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCb;
    }
.end annotation


# static fields
.field private static final DEFAULT_CONNECTION_TIMEOUT_MS:I = 0x493e0

.field private static final DEFAULT_MEDIA_SESSION_TAG_DELIM:Ljava/lang/String; = "."

.field private static final DEFAULT_MEDIA_SESSION_TAG_PREFIX:Ljava/lang/String; = "androidx.media3.session.id"

.field private static final PENDING_INTENT_FLAG_MUTABLE:I

.field private static final TAG:Ljava/lang/String; = "MediaSessionLegacyStub"


# instance fields
.field private final androidAutoObserver:Landroidx/media3/session/AndroidAutoConnectionStateObserver;

.field private availablePlayerCommands:Landroidx/media3/common/Player$Commands;

.field private availableSessionCommands:Landroidx/media3/session/SessionCommands;

.field private final broadcastReceiverComponentName:Landroid/content/ComponentName;

.field private final connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/session/ConnectedControllersManager<",
            "Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final connectionTimeoutHandler:Landroidx/media3/session/MediaSessionLegacyStub$ConnectionTimeoutHandler;

.field private volatile connectionTimeoutMs:J

.field private final controllerLegacyCbForBroadcast:Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;

.field private customLayout:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList;"
        }
    .end annotation
.end field

.field private customPlaybackException:Landroidx/media3/common/PlaybackException;

.field private legacyError:Landroidx/media3/session/MediaSessionLegacyStub$LegacyError;

.field private legacyExtras:Landroid/os/Bundle;

.field private final mayNeedButtonReservationWorkaroundForSeekbar:Z

.field private mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList;"
        }
    .end annotation
.end field

.field private pendingBitmapLoadCallback:Lcom/google/common/util/concurrent/FutureCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/FutureCallback;"
        }
    .end annotation
.end field

.field private final playIfSuppressed:Z

.field private playerCommandsForErrorState:Landroidx/media3/common/Player$Commands;

.field private final runtimeBroadcastReceiver:Landroidx/media3/session/MediaSessionLegacyStub$MediaButtonReceiver;

.field private final sessionCompat:Landroidx/media3/session/legacy/MediaSessionCompat;

.field private sessionFlags:I

.field private final sessionImpl:Landroidx/media3/session/MediaSessionImpl;

.field private final sessionManager:Landroidx/media3/session/legacy/MediaSessionManager;

.field private volumeProviderCompat:Landroidx/media3/session/legacy/VolumeProviderCompat;


# direct methods
.method public static synthetic $r8$lambda$0uI7rl43JsuDQnpfwqOayLuXv_w(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 1

    .line 830
    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    const/4 v0, 0x1

    .line 830
    invoke-virtual {p0, p1, v0}, Landroidx/media3/session/MediaSessionImpl;->handleMediaControllerPlayRequest(Landroidx/media3/session/MediaSession$ControllerInfo;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$2PbVNi6Rd3X_8iCXH9tBmcOR5qo(Landroidx/media3/session/MediaSessionLegacyStub;JLandroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 0

    .line 700
    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 700
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p0

    long-to-int p1, p1

    .line 703
    invoke-virtual {p0, p1}, Landroidx/media3/session/PlayerWrapper;->seekToDefaultPosition(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$3Ve7LVHoIoffoNrcFr_8r0T5Gzo(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/common/MediaItem;ZZLandroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 6

    .line 1086
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 1088
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    const/4 v3, -0x1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object v1, p4

    .line 1087
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/session/MediaSessionImpl;->onSetMediaItemsOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;IJ)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 1089
    new-instance p4, Landroidx/media3/session/MediaSessionLegacyStub$1;

    invoke-direct {p4, p0, v1, p2, p3}, Landroidx/media3/session/MediaSessionLegacyStub$1;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/MediaSession$ControllerInfo;ZZ)V

    .line 1127
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    .line 1089
    invoke-static {p1, p4, p0}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CEAC9bvKNNxVkEXW9qjRxLM5bds(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 0

    .line 632
    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 632
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->stop()V

    return-void
.end method

.method public static synthetic $r8$lambda$DgyDSxTQclAC_zPsJoprKPCc4Hg(Landroidx/media3/session/MediaSessionLegacyStub;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionLegacyStub;->updateCustomLayoutAndLegacyExtrasForMediaButtonPreferencesAndInformExtrasChanged()V

    return-void
.end method

.method public static synthetic $r8$lambda$EVcZOBoGuymFl7I-F8QCR2hVoNc(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 0

    .line 651
    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 651
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->seekToNext()V

    return-void
.end method

.method public static synthetic $r8$lambda$GRW2wcYX1prlicrsX-p5mLvHz38(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 0

    .line 623
    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 623
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/util/Util;->handlePauseButtonAction(Landroidx/media3/common/Player;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$MNXqotv-lmBC_eIrGx22VYL1lEU(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 0

    .line 668
    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 668
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->seekToPrevious()V

    return-void
.end method

.method public static synthetic $r8$lambda$MtuiXjNqcgjJtPF9mmi4REmY9lg(Landroidx/media3/session/MediaSessionLegacyStub;ILandroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Landroidx/media3/session/MediaSessionLegacyStub$SessionTask;Z)V
    .locals 2

    .line 851
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 851
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 854
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroidx/media3/session/legacy/MediaSessionCompat;

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaSessionCompat;->isActive()Z

    move-result v0

    const-string v1, "MediaSessionLegacyStub"

    if-nez v0, :cond_1

    .line 855
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ignore incoming player command before initialization. command="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    invoke-virtual {p2}, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;->getPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 855
    invoke-static {v1, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 863
    :cond_1
    invoke-direct {p0, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->tryGetController(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_0

    .line 868
    :cond_2
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    invoke-virtual {v0, p2, p1}, Landroidx/media3/session/ConnectedControllersManager;->isPlayerCommandAvailable(Landroidx/media3/session/MediaSession$ControllerInfo;I)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 p2, 0x1

    if-ne p1, p2, :cond_5

    .line 869
    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 870
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getPlayWhenReady()Z

    move-result p0

    if-nez p0, :cond_5

    .line 871
    const-string p0, "Calling play() omitted due to COMMAND_PLAY_PAUSE not being available. If this play command has started the service for instance for playback resumption, this may prevent the service from being started into the foreground."

    invoke-static {v1, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 880
    :cond_3
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {v0, p2, p1}, Landroidx/media3/session/MediaSessionImpl;->onPlayerCommandRequestOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;I)I

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 886
    :cond_4
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    new-instance v1, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda3;

    invoke-direct {v1, p3, p2}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/MediaSession$ControllerInfo;)V

    .line 887
    invoke-virtual {v0, p2, v1}, Landroidx/media3/session/MediaSessionImpl;->callWithControllerForCurrentRequestSet(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p3

    .line 901
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    if-eqz p4, :cond_5

    .line 903
    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    new-instance p3, Landroidx/media3/common/Player$Commands$Builder;

    invoke-direct {p3}, Landroidx/media3/common/Player$Commands$Builder;-><init>()V

    .line 904
    invoke-virtual {p3, p1}, Landroidx/media3/common/Player$Commands$Builder;->add(I)Landroidx/media3/common/Player$Commands$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/Player$Commands$Builder;->build()Landroidx/media3/common/Player$Commands;

    move-result-object p1

    .line 903
    invoke-virtual {p0, p2, p1}, Landroidx/media3/session/MediaSessionImpl;->onPlayerInteractionFinishedOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/common/Player$Commands;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public static synthetic $r8$lambda$R860oOR7Ur9nrRVIHyJ9YFQgwfc(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 1

    .line 518
    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    const/4 v0, 0x0

    .line 519
    invoke-virtual {p0, p3, v0, p1, p2}, Landroidx/media3/session/MediaSessionImpl;->onCustomCommandOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaSession$ProgressReporter;Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    .line 518
    invoke-static {p0}, Landroidx/media3/session/MediaSessionLegacyStub;->ignoreFuture(Ljava/util/concurrent/Future;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TZ33bCekKUornYXtFKaHrU24S3o(Lcom/google/common/util/concurrent/ListenableFuture;Landroid/os/ResultReceiver;)V
    .locals 2

    .line 1188
    const-string v0, "MediaSessionLegacyStub"

    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/SessionResult;

    const-string v1, "SessionResult must not be null"

    invoke-static {p0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/SessionResult;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    goto :goto_1

    .line 1193
    :goto_0
    const-string v1, "Custom command failed"

    invoke-static {v0, v1, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1194
    new-instance p0, Landroidx/media3/session/SessionResult;

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroidx/media3/session/SessionResult;-><init>(I)V

    goto :goto_2

    .line 1190
    :goto_1
    const-string v1, "Custom command cancelled"

    invoke-static {v0, v1, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1191
    new-instance p0, Landroidx/media3/session/SessionResult;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/media3/session/SessionResult;-><init>(I)V

    .line 1196
    :goto_2
    iget v0, p0, Landroidx/media3/session/SessionResult;->resultCode:I

    iget-object p0, p0, Landroidx/media3/session/SessionResult;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v0, p0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TxhcVUNtOc-P20duMYodI-jow-s(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/PlayerWrapper;)V
    .locals 1

    .line 1063
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroidx/media3/session/legacy/MediaSessionCompat;

    .line 1063
    invoke-direct {p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub;->createPlaybackStateCompat(Landroidx/media3/session/PlayerWrapper;)Landroidx/media3/session/legacy/PlaybackStateCompat;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/media3/session/legacy/MediaSessionCompat;->setPlaybackState(Landroidx/media3/session/legacy/PlaybackStateCompat;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WBUjl0SWDPW-A2u3C0-qamKjILo(Landroidx/media3/session/MediaSessionLegacyStub;JLandroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 0

    .line 641
    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 641
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/PlayerWrapper;->seekTo(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y6DY0gQr0UFcIDfia_a7LYaKTqo(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;Landroid/os/ResultReceiver;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 1

    .line 489
    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    if-nez p2, :cond_0

    .line 494
    sget-object p2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_0
    const/4 v0, 0x0

    .line 490
    invoke-virtual {p0, p4, v0, p1, p2}, Landroidx/media3/session/MediaSessionImpl;->onCustomCommandOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaSession$ProgressReporter;Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    if-eqz p3, :cond_1

    .line 496
    invoke-static {p3, p0}, Landroidx/media3/session/MediaSessionLegacyStub;->sendCustomCommandResultWhenReady(Landroid/os/ResultReceiver;Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-void

    .line 498
    :cond_1
    invoke-static {p0}, Landroidx/media3/session/MediaSessionLegacyStub;->ignoreFuture(Ljava/util/concurrent/Future;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZSqHkRizxzPrXnnj721mstdQaus(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 0

    .line 553
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 554
    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p1

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->shouldPlayIfSuppressed()Z

    move-result p0

    .line 553
    invoke-static {p1, p0}, Landroidx/media3/common/util/Util;->handlePlayPauseButtonAction(Landroidx/media3/common/Player;Z)Z

    return-void
.end method

.method public static synthetic $r8$lambda$ZTzY66AdxIgVMyJLBzZESMRj1ok(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 0

    .line 563
    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 563
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->prepare()V

    return-void
.end method

.method public static synthetic $r8$lambda$_GWKNqsuBTKVJCOQXfaxqGjRgmE(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 0

    .line 674
    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 674
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->seekToPreviousMediaItem()V

    return-void
.end method

.method public static synthetic $r8$lambda$awMNngmqcmZ9dbvbJRGsHYnP-10(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/legacy/MediaDescriptionCompat;ILandroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1140
    invoke-virtual {p1}, Landroidx/media3/session/legacy/MediaDescriptionCompat;->getMediaId()Ljava/lang/String;

    move-result-object v0

    .line 1141
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1142
    const-string p0, "MediaSessionLegacyStub"

    const-string p1, "onAddQueueItem(): Media ID shouldn\'t be empty"

    invoke-static {p0, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1145
    :cond_0
    invoke-static {p1}, Landroidx/media3/session/LegacyConversions;->convertToMediaItem(Landroidx/media3/session/legacy/MediaDescriptionCompat;)Landroidx/media3/common/MediaItem;

    move-result-object p1

    .line 1146
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 1147
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-virtual {v0, p3, p1}, Landroidx/media3/session/MediaSessionImpl;->onAddMediaItemsOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 1148
    new-instance v0, Landroidx/media3/session/MediaSessionLegacyStub$2;

    invoke-direct {v0, p0, p3, p2}, Landroidx/media3/session/MediaSessionLegacyStub$2;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    .line 1176
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    .line 1148
    invoke-static {p1, v0, p0}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bNUoC20JbvmdhX7iDZtCea1oEJg(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/common/Rating;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 1

    .line 915
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 916
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->getCurrentMediaItemWithCommandCheck()Landroidx/media3/common/MediaItem;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 921
    :cond_0
    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    iget-object v0, v0, Landroidx/media3/common/MediaItem;->mediaId:Ljava/lang/String;

    invoke-virtual {p0, p2, v0, p1}, Landroidx/media3/session/MediaSessionImpl;->onSetRatingOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;Landroidx/media3/common/Rating;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/session/MediaSessionLegacyStub;->ignoreFuture(Ljava/util/concurrent/Future;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bh9qzm0SJp9UUbAud5ox6kGIVzk(Landroidx/media3/session/MediaSessionLegacyStub;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionLegacyStub;->onAndroidAutoConnectionStateChanged()V

    return-void
.end method

.method public static synthetic $r8$lambda$d3Gz6hIY1RAfqPL7THI5CFqzBH8(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 0

    .line 713
    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 713
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->seekForward()V

    return-void
.end method

.method public static synthetic $r8$lambda$foMxgWuixLvLUh8nE0tMtV4Pw5M(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 0

    .line 657
    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 657
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->seekToNextMediaItem()V

    return-void
.end method

.method public static synthetic $r8$lambda$k6yTB2x3LWGZAYdKaJMNNcefnSk(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/PlayerWrapper;)V
    .locals 2

    .line 1070
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroidx/media3/session/legacy/MediaSessionCompat;

    .line 1070
    invoke-direct {p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub;->createPlaybackStateCompat(Landroidx/media3/session/PlayerWrapper;)Landroidx/media3/session/legacy/PlaybackStateCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/session/legacy/MediaSessionCompat;->setPlaybackState(Landroidx/media3/session/legacy/PlaybackStateCompat;)V

    .line 1071
    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->controllerLegacyCbForBroadcast:Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;

    .line 1072
    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->getAvailableCommands()Landroidx/media3/common/Player$Commands;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1073
    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object p1

    goto :goto_0

    .line 1074
    :cond_0
    sget-object p1, Landroidx/media3/common/Timeline;->EMPTY:Landroidx/media3/common/Timeline;

    .line 1071
    :goto_0
    invoke-static {p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->access$1800(Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;Landroidx/media3/common/Timeline;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kYSeqkGClzpvu3ALuH_jxNAKcfg(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/CommandButton;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 0

    .line 1015
    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 1015
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/media3/session/CommandButton;->executePlayerAction(Landroidx/media3/common/Player;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lg96KIy6PL3JS-na0m0I1PXcdhg(Landroidx/media3/session/MediaSessionLegacyStub;ILandroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 0

    .line 752
    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 753
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p0

    .line 755
    invoke-static {p1}, Landroidx/media3/session/LegacyConversions;->convertToRepeatMode(I)I

    move-result p1

    .line 754
    invoke-virtual {p0, p1}, Landroidx/media3/session/PlayerWrapper;->setRepeatMode(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$lhci2SFYJ72FsL8MQH4m7xggtAU(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 0

    .line 722
    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 722
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->seekBack()V

    return-void
.end method

.method public static synthetic $r8$lambda$mk9a_qh3f89yHUBeGey9WUPhflA(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/SessionCommand;ILandroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Landroidx/media3/session/MediaSessionLegacyStub$SessionTask;)V
    .locals 2

    .line 947
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 947
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 950
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroidx/media3/session/legacy/MediaSessionCompat;

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaSessionCompat;->isActive()Z

    move-result v0

    const-string v1, "MediaSessionLegacyStub"

    if-nez v0, :cond_2

    .line 951
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Ignore incoming session command before initialization. command="

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    .line 954
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Landroidx/media3/session/SessionCommand;->customAction:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 956
    invoke-virtual {p3}, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;->getPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 951
    invoke-static {v1, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 959
    :cond_2
    invoke-direct {p0, p3}, Landroidx/media3/session/MediaSessionLegacyStub;->tryGetController(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object p3

    if-nez p3, :cond_3

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    .line 965
    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    invoke-virtual {p0, p3, p1}, Landroidx/media3/session/ConnectedControllersManager;->isSessionCommandAvailable(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommand;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_1

    .line 970
    :cond_4
    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    invoke-virtual {p0, p3, p2}, Landroidx/media3/session/ConnectedControllersManager;->isSessionCommandAvailable(Landroidx/media3/session/MediaSession$ControllerInfo;I)Z

    move-result p0

    if-nez p0, :cond_5

    :goto_1
    return-void

    .line 975
    :cond_5
    :try_start_0
    invoke-interface {p4, p3}, Landroidx/media3/session/MediaSessionLegacyStub$SessionTask;->run(Landroidx/media3/session/MediaSession$ControllerInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 982
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception in "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oMnM_kVO6nREnTsTxGD2vVh09hs(Landroidx/media3/session/MediaSessionLegacyStub;FLandroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 0

    .line 687
    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 687
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/media3/session/PlayerWrapper;->setPlaybackSpeed(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$oZ93wxP6mmIzUIiFsbIgtbTF25s(Landroidx/media3/session/MediaSessionLegacyStub;ILandroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 0

    .line 765
    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 766
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p0

    .line 767
    invoke-static {p1}, Landroidx/media3/session/LegacyConversions;->convertToShuffleModeEnabled(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/media3/session/PlayerWrapper;->setShuffleModeEnabled(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$v4K3TwfrCmXeR_CdDix8pVkBZBE(Landroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 2

    .line 891
    :try_start_0
    invoke-interface {p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub$SessionTask;->run(Landroidx/media3/session/MediaSession$ControllerInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaSessionLegacyStub"

    invoke-static {v0, p1, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zkpVdUOIPDusmV5_W_HPqjrIlpg(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/legacy/MediaDescriptionCompat;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 790
    invoke-virtual {p1}, Landroidx/media3/session/legacy/MediaDescriptionCompat;->getMediaId()Ljava/lang/String;

    move-result-object p1

    .line 791
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v0, "MediaSessionLegacyStub"

    if-eqz p2, :cond_0

    .line 792
    const-string p0, "onRemoveQueueItem(): Media ID shouldn\'t be null"

    invoke-static {v0, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 795
    :cond_0
    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p0

    const/16 p2, 0x11

    .line 796
    invoke-virtual {p0, p2}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result p2

    if-nez p2, :cond_1

    .line 797
    const-string p0, "Can\'t remove item by ID without COMMAND_GET_TIMELINE being available"

    invoke-static {v0, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 800
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object p2

    .line 801
    new-instance v0, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Window;-><init>()V

    const/4 v1, 0x0

    .line 802
    :goto_0
    invoke-virtual {p2}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 803
    invoke-virtual {p2, v1, v0}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v2

    iget-object v2, v2, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 804
    iget-object v2, v2, Landroidx/media3/common/MediaItem;->mediaId:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 805
    invoke-virtual {p0, v1}, Landroidx/media3/session/PlayerWrapper;->removeMediaItem(I)V

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    const/high16 v0, 0x2000000

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput v0, Landroidx/media3/session/MediaSessionLegacyStub;->PENDING_INTENT_FLAG_MUTABLE:I

    return-void
.end method

.method public constructor <init>(Landroidx/media3/session/MediaSessionImpl;Landroid/net/Uri;Landroid/os/Handler;Landroid/os/Bundle;ZLcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Landroid/os/Bundle;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSessionImpl;",
            "Landroid/net/Uri;",
            "Landroid/os/Handler;",
            "Landroid/os/Bundle;",
            "Z",
            "Lcom/google/common/collect/ImmutableList;",
            "Lcom/google/common/collect/ImmutableList;",
            "Landroidx/media3/session/SessionCommands;",
            "Landroidx/media3/common/Player$Commands;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 171
    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;-><init>()V

    .line 172
    iput-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 173
    iput-boolean p5, p0, Landroidx/media3/session/MediaSessionLegacyStub;->playIfSuppressed:Z

    move-object/from16 v0, p6

    .line 174
    iput-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->customLayout:Lcom/google/common/collect/ImmutableList;

    move-object/from16 v0, p7

    .line 175
    iput-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    move-object/from16 v1, p8

    .line 176
    iput-object v1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    move-object/from16 v1, p9

    .line 177
    iput-object v1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    .line 178
    new-instance v1, Landroid/os/Bundle;

    move-object/from16 v2, p10

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->legacyExtras:Landroid/os/Bundle;

    .line 179
    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 180
    invoke-static {v1}, Landroidx/media3/session/legacy/MediaSessionManager;->getSessionManager(Landroid/content/Context;)Landroidx/media3/session/legacy/MediaSessionManager;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionManager:Landroidx/media3/session/legacy/MediaSessionManager;

    .line 181
    new-instance v2, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;

    invoke-direct {v2, p0}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;)V

    iput-object v2, p0, Landroidx/media3/session/MediaSessionLegacyStub;->controllerLegacyCbForBroadcast:Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;

    .line 182
    new-instance v2, Landroidx/media3/session/ConnectedControllersManager;

    invoke-direct {v2, p1}, Landroidx/media3/session/ConnectedControllersManager;-><init>(Landroidx/media3/session/MediaSessionImpl;)V

    iput-object v2, p0, Landroidx/media3/session/MediaSessionLegacyStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    const-wide/32 v3, 0x493e0

    .line 183
    iput-wide v3, p0, Landroidx/media3/session/MediaSessionLegacyStub;->connectionTimeoutMs:J

    .line 184
    new-instance v3, Landroidx/media3/session/MediaSessionLegacyStub$ConnectionTimeoutHandler;

    .line 186
    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroidx/media3/session/MediaSessionLegacyStub$ConnectionTimeoutHandler;-><init>(Landroid/os/Looper;Landroidx/media3/session/ConnectedControllersManager;)V

    iput-object v3, p0, Landroidx/media3/session/MediaSessionLegacyStub;->connectionTimeoutHandler:Landroidx/media3/session/MediaSessionLegacyStub$ConnectionTimeoutHandler;

    .line 188
    invoke-static {v1}, Landroidx/media3/session/MediaSessionLegacyStub;->mayNeedButtonReservationWorkaroundForSeekbar(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Landroidx/media3/session/MediaSessionLegacyStub;->mayNeedButtonReservationWorkaroundForSeekbar:Z

    .line 190
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionLegacyStub;->updateCustomLayoutAndLegacyExtrasForMediaButtonPreferences()V

    .line 196
    :cond_0
    invoke-static {v1}, Landroidx/media3/session/MediaSessionLegacyStub;->queryPackageManagerForMediaButtonReceiver(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->broadcastReceiverComponentName:Landroid/content/ComponentName;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    .line 199
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v5, v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v5, v0

    :cond_2
    move v6, v4

    goto :goto_1

    .line 203
    :cond_3
    :goto_0
    const-string v5, "androidx.media3.session.MediaLibraryService"

    .line 204
    invoke-static {v1, v5}, Landroidx/media3/session/MediaSessionLegacyStub;->getServiceComponentByAction(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    if-nez v5, :cond_4

    .line 206
    const-string v5, "androidx.media3.session.MediaSessionService"

    .line 207
    invoke-static {v1, v5}, Landroidx/media3/session/MediaSessionLegacyStub;->getServiceComponentByAction(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    :cond_4
    if-eqz v5, :cond_2

    .line 211
    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x1

    .line 213
    :goto_1
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v7, v8, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v9, 0x0

    if-nez v5, :cond_5

    .line 218
    new-instance v5, Landroidx/media3/session/MediaSessionLegacyStub$MediaButtonReceiver;

    invoke-direct {v5, p0, v9}, Landroidx/media3/session/MediaSessionLegacyStub$MediaButtonReceiver;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/MediaSessionLegacyStub$1;)V

    iput-object v5, p0, Landroidx/media3/session/MediaSessionLegacyStub;->runtimeBroadcastReceiver:Landroidx/media3/session/MediaSessionLegacyStub$MediaButtonReceiver;

    .line 219
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v6, p2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 221
    invoke-static {v1, v5, v6}, Landroidx/media3/common/util/Util;->registerReceiverNotExported(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 223
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    sget p2, Landroidx/media3/session/MediaSessionLegacyStub;->PENDING_INTENT_FLAG_MUTABLE:I

    .line 225
    invoke-static {v1, v4, v7, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 228
    new-instance v5, Landroid/content/ComponentName;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v5, v1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_3

    .line 230
    :cond_5
    invoke-virtual {v7, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz v6, :cond_7

    .line 233
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt p2, v6, :cond_6

    .line 234
    sget p2, Landroidx/media3/session/MediaSessionLegacyStub;->PENDING_INTENT_FLAG_MUTABLE:I

    invoke-static {v1, v4, v7, p2}, Landroidx/media3/session/DefaultActionFactory$Api26$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    goto :goto_2

    .line 236
    :cond_6
    sget p2, Landroidx/media3/session/MediaSessionLegacyStub;->PENDING_INTENT_FLAG_MUTABLE:I

    invoke-static {v1, v4, v7, p2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    goto :goto_2

    .line 238
    :cond_7
    sget p2, Landroidx/media3/session/MediaSessionLegacyStub;->PENDING_INTENT_FLAG_MUTABLE:I

    invoke-static {v1, v4, v7, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 240
    :goto_2
    iput-object v9, p0, Landroidx/media3/session/MediaSessionLegacyStub;->runtimeBroadcastReceiver:Landroidx/media3/session/MediaSessionLegacyStub$MediaButtonReceiver;

    .line 243
    :goto_3
    const-string v4, "androidx.media3.session.id"

    .line 246
    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getId()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    .line 244
    const-string v6, "."

    invoke-static {v6, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 247
    new-instance v6, Landroidx/media3/session/legacy/MediaSessionCompat;

    .line 251
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v7, v3, :cond_8

    goto :goto_4

    :cond_8
    move-object v5, v9

    :goto_4
    if-ge v7, v3, :cond_9

    move-object/from16 p9, p2

    :goto_5
    move-object/from16 p10, p4

    move-object/from16 p6, v1

    move-object/from16 p7, v4

    move-object/from16 p8, v5

    move-object p5, v6

    goto :goto_6

    :cond_9
    move-object/from16 p9, v9

    goto :goto_5

    .line 252
    :goto_6
    invoke-direct/range {p5 .. p10}, Landroidx/media3/session/legacy/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;Landroid/os/Bundle;)V

    move-object p4, p5

    move-object/from16 p2, p6

    iput-object p4, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroidx/media3/session/legacy/MediaSessionCompat;

    if-lt v7, v3, :cond_a

    if-eqz v0, :cond_a

    .line 255
    invoke-static {p4, v0}, Landroidx/media3/session/MediaSessionLegacyStub$Api31;->setMediaButtonBroadcastReceiver(Landroidx/media3/session/legacy/MediaSessionCompat;Landroid/content/ComponentName;)V

    .line 258
    :cond_a
    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getSessionActivity()Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 260
    invoke-virtual {p4, p1}, Landroidx/media3/session/legacy/MediaSessionCompat;->setSessionActivity(Landroid/app/PendingIntent;)V

    .line 266
    :cond_b
    invoke-virtual {p4, p0, p3}, Landroidx/media3/session/legacy/MediaSessionCompat;->setCallback(Landroidx/media3/session/legacy/MediaSessionCompat$Callback;Landroid/os/Handler;)V

    if-eqz v2, :cond_c

    .line 270
    new-instance v9, Landroidx/media3/session/AndroidAutoConnectionStateObserver;

    .line 271
    new-instance p1, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda4;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;)V

    invoke-direct {v9, p2, p1}, Landroidx/media3/session/AndroidAutoConnectionStateObserver;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 272
    :cond_c
    iput-object v9, p0, Landroidx/media3/session/MediaSessionLegacyStub;->androidAutoObserver:Landroidx/media3/session/AndroidAutoConnectionStateObserver;

    return-void
.end method

.method static synthetic access$1000(Landroidx/media3/session/MediaSessionLegacyStub;)Z
    .locals 0

    .line 119
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionLegacyStub;->isQueueEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Landroidx/media3/session/legacy/MediaSessionCompat;Ljava/util/List;)V
    .locals 0

    .line 119
    invoke-static {p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub;->setQueue(Landroidx/media3/session/legacy/MediaSessionCompat;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1200(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/legacy/MediaSessionCompat;Ljava/lang/CharSequence;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->setQueueTitle(Landroidx/media3/session/legacy/MediaSessionCompat;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$1300(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/legacy/VolumeProviderCompat;
    .locals 0

    .line 119
    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->volumeProviderCompat:Landroidx/media3/session/legacy/VolumeProviderCompat;

    return-object p0
.end method

.method static synthetic access$1302(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/legacy/VolumeProviderCompat;)Landroidx/media3/session/legacy/VolumeProviderCompat;
    .locals 0

    .line 119
    iput-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->volumeProviderCompat:Landroidx/media3/session/legacy/VolumeProviderCompat;

    return-object p1
.end method

.method static synthetic access$1400(Landroidx/media3/session/PlayerWrapper;)Landroidx/media3/session/legacy/VolumeProviderCompat;
    .locals 0

    .line 119
    invoke-static {p0}, Landroidx/media3/session/MediaSessionLegacyStub;->createVolumeProviderCompat(Landroidx/media3/session/PlayerWrapper;)Landroidx/media3/session/legacy/VolumeProviderCompat;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Landroidx/media3/session/MediaSessionLegacyStub;)Lcom/google/common/util/concurrent/FutureCallback;
    .locals 0

    .line 119
    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->pendingBitmapLoadCallback:Lcom/google/common/util/concurrent/FutureCallback;

    return-object p0
.end method

.method static synthetic access$1502(Landroidx/media3/session/MediaSessionLegacyStub;Lcom/google/common/util/concurrent/FutureCallback;)Lcom/google/common/util/concurrent/FutureCallback;
    .locals 0

    .line 119
    iput-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->pendingBitmapLoadCallback:Lcom/google/common/util/concurrent/FutureCallback;

    return-object p1
.end method

.method static synthetic access$1600(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0

    .line 119
    invoke-static {p0}, Landroidx/media3/session/MediaSessionLegacyStub;->getBitmapLoadErrorMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Landroidx/media3/session/legacy/MediaSessionCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;)V
    .locals 0

    .line 119
    invoke-static {p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub;->setMetadata(Landroidx/media3/session/legacy/MediaSessionCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;)V

    return-void
.end method

.method static synthetic access$200(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/common/PlaybackException;
    .locals 0

    .line 119
    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->customPlaybackException:Landroidx/media3/common/PlaybackException;

    return-object p0
.end method

.method static synthetic access$300(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;
    .locals 0

    .line 119
    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    return-object p0
.end method

.method static synthetic access$400(Landroidx/media3/session/MediaSessionLegacyStub;)Landroid/os/Bundle;
    .locals 0

    .line 119
    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->legacyExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$402(Landroidx/media3/session/MediaSessionLegacyStub;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 119
    iput-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->legacyExtras:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$500(Landroidx/media3/session/MediaSessionLegacyStub;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    .line 119
    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method static synthetic access$600(Landroidx/media3/session/MediaSessionLegacyStub;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionLegacyStub;->updateCustomLayoutAndLegacyExtrasForMediaButtonPreferences()V

    return-void
.end method

.method static synthetic access$700(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/legacy/MediaSessionCompat;
    .locals 0

    .line 119
    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroidx/media3/session/legacy/MediaSessionCompat;

    return-object p0
.end method

.method static synthetic access$802(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/MediaSessionLegacyStub$LegacyError;)Landroidx/media3/session/MediaSessionLegacyStub$LegacyError;
    .locals 0

    .line 119
    iput-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->legacyError:Landroidx/media3/session/MediaSessionLegacyStub$LegacyError;

    return-object p1
.end method

.method static synthetic access$900(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/PlayerWrapper;)Landroidx/media3/session/legacy/PlaybackStateCompat;
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub;->createPlaybackStateCompat(Landroidx/media3/session/PlayerWrapper;)Landroidx/media3/session/legacy/PlaybackStateCompat;

    move-result-object p0

    return-object p0
.end method

.method private static convertCommandToPlaybackStateActions(IZ)J
    .locals 1

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 p1, 0x2

    if-eq p0, p1, :cond_2

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1

    const/16 p1, 0x1f

    if-eq p0, p1, :cond_0

    packed-switch p0, :pswitch_data_0

    const-wide/16 p0, 0x0

    return-wide p0

    :pswitch_0
    const-wide/32 p0, 0x40000

    return-wide p0

    :pswitch_1
    const-wide/32 p0, 0x280000

    return-wide p0

    :pswitch_2
    const-wide/32 p0, 0x400000

    return-wide p0

    :pswitch_3
    const-wide/16 p0, 0x40

    return-wide p0

    :pswitch_4
    const-wide/16 p0, 0x8

    return-wide p0

    :pswitch_5
    const-wide/16 p0, 0x1000

    return-wide p0

    :pswitch_6
    const-wide/16 p0, 0x20

    return-wide p0

    :pswitch_7
    const-wide/16 p0, 0x10

    return-wide p0

    :pswitch_8
    const-wide/16 p0, 0x100

    return-wide p0

    :cond_0
    const-wide/32 p0, 0x3ac00

    return-wide p0

    :cond_1
    const-wide/16 p0, 0x1

    return-wide p0

    :cond_2
    const-wide/16 p0, 0x4000

    return-wide p0

    :cond_3
    if-eqz p1, :cond_4

    const-wide/16 p0, 0x204

    return-wide p0

    :cond_4
    const-wide/16 p0, 0x202

    return-wide p0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static createMediaItemForMediaRequest(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/media3/common/MediaItem;
    .locals 1

    .line 1302
    new-instance v0, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    if-nez p0, :cond_0

    .line 1303
    const-string p0, ""

    :cond_0
    invoke-virtual {v0, p0}, Landroidx/media3/common/MediaItem$Builder;->setMediaId(Ljava/lang/String;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object p0

    new-instance v0, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;-><init>()V

    .line 1306
    invoke-virtual {v0, p1}, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;->setMediaUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem$RequestMetadata$Builder;

    move-result-object p1

    .line 1307
    invoke-virtual {p1, p2}, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;->setSearchQuery(Ljava/lang/String;)Landroidx/media3/common/MediaItem$RequestMetadata$Builder;

    move-result-object p1

    .line 1308
    invoke-virtual {p1, p3}, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/media3/common/MediaItem$RequestMetadata$Builder;

    move-result-object p1

    .line 1309
    invoke-virtual {p1}, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;->build()Landroidx/media3/common/MediaItem$RequestMetadata;

    move-result-object p1

    .line 1304
    invoke-virtual {p0, p1}, Landroidx/media3/common/MediaItem$Builder;->setRequestMetadata(Landroidx/media3/common/MediaItem$RequestMetadata;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object p0

    .line 1310
    invoke-virtual {p0}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method private createPlaybackStateCompat(Landroidx/media3/session/PlayerWrapper;)Landroidx/media3/session/legacy/PlaybackStateCompat;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1841
    iget-object v2, v0, Landroidx/media3/session/MediaSessionLegacyStub;->legacyError:Landroidx/media3/session/MediaSessionLegacyStub$LegacyError;

    .line 1842
    iget-object v3, v0, Landroidx/media3/session/MediaSessionLegacyStub;->customPlaybackException:Landroidx/media3/common/PlaybackException;

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    iget-boolean v4, v2, Landroidx/media3/session/MediaSessionLegacyStub$LegacyError;->isFatal:Z

    if-eqz v4, :cond_0

    .line 1845
    new-instance v1, Landroid/os/Bundle;

    iget-object v3, v2, Landroidx/media3/session/MediaSessionLegacyStub$LegacyError;->extras:Landroid/os/Bundle;

    invoke-direct {v1, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1846
    iget-object v3, v0, Landroidx/media3/session/MediaSessionLegacyStub;->legacyExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1847
    new-instance v4, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    invoke-direct {v4}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;-><init>()V

    const/4 v8, 0x0

    .line 1852
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    const/4 v5, 0x7

    const-wide/16 v6, -0x1

    .line 1848
    invoke-virtual/range {v4 .. v10}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->setState(IJFJ)Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    move-result-object v3

    const-wide/16 v4, 0x0

    .line 1853
    invoke-virtual {v3, v4, v5}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->setActions(J)Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    move-result-object v3

    .line 1854
    invoke-virtual {v3, v4, v5}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->setBufferedPosition(J)Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    move-result-object v3

    .line 1855
    invoke-virtual {v3, v1}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    move-result-object v1

    iget v3, v2, Landroidx/media3/session/MediaSessionLegacyStub$LegacyError;->code:I

    iget-object v4, v2, Landroidx/media3/session/MediaSessionLegacyStub$LegacyError;->message:Ljava/lang/String;

    .line 1856
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3, v4}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->setErrorMessage(ILjava/lang/CharSequence;)Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    move-result-object v1

    iget-object v2, v2, Landroidx/media3/session/MediaSessionLegacyStub$LegacyError;->extras:Landroid/os/Bundle;

    .line 1857
    invoke-virtual {v1, v2}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    move-result-object v1

    .line 1858
    invoke-virtual {v1}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->build()Landroidx/media3/session/legacy/PlaybackStateCompat;

    move-result-object v1

    return-object v1

    :cond_0
    if-eqz v3, :cond_1

    goto :goto_0

    .line 1863
    :cond_1
    invoke-virtual {v1}, Landroidx/media3/session/PlayerWrapper;->getPlayerError()Landroidx/media3/common/PlaybackException;

    move-result-object v3

    :goto_0
    const/16 v4, 0x10

    .line 1865
    invoke-virtual {v1, v4}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1866
    invoke-virtual {v1}, Landroidx/media3/session/PlayerWrapper;->isCurrentMediaItemLive()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-nez v3, :cond_4

    .line 1867
    iget-boolean v7, v0, Landroidx/media3/session/MediaSessionLegacyStub;->playIfSuppressed:Z

    .line 1868
    invoke-static {v1, v7}, Landroidx/media3/common/util/Util;->shouldShowPlayButton(Landroidx/media3/common/Player;Z)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v7, 0x1

    :goto_3
    if-eqz v3, :cond_5

    const/4 v8, 0x7

    :goto_4
    move v10, v8

    goto :goto_5

    .line 1872
    :cond_5
    invoke-static {v1, v7}, Landroidx/media3/session/LegacyConversions;->convertToPlaybackStateCompatState(Landroidx/media3/common/Player;Z)I

    move-result v8

    goto :goto_4

    .line 1875
    :goto_5
    invoke-virtual {v1}, Landroidx/media3/session/PlayerWrapper;->getAvailableCommands()Landroidx/media3/common/Player$Commands;

    move-result-object v8

    .line 1877
    iget-object v9, v0, Landroidx/media3/session/MediaSessionLegacyStub;->playerCommandsForErrorState:Landroidx/media3/common/Player$Commands;

    if-eqz v9, :cond_6

    .line 1878
    invoke-static {v9, v8}, Landroidx/media3/session/MediaUtils;->intersect(Landroidx/media3/common/Player$Commands;Landroidx/media3/common/Player$Commands;)Landroidx/media3/common/Player$Commands;

    move-result-object v8

    goto :goto_6

    .line 1879
    :cond_6
    iget-object v9, v0, Landroidx/media3/session/MediaSessionLegacyStub;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    invoke-static {v9, v8}, Landroidx/media3/session/MediaUtils;->intersect(Landroidx/media3/common/Player$Commands;Landroidx/media3/common/Player$Commands;)Landroidx/media3/common/Player$Commands;

    move-result-object v8

    :goto_6
    const-wide/16 v11, 0x80

    const/4 v9, 0x0

    .line 1880
    :goto_7
    invoke-virtual {v8}, Landroidx/media3/common/Player$Commands;->size()I

    move-result v13

    if-ge v9, v13, :cond_7

    .line 1882
    invoke-virtual {v8, v9}, Landroidx/media3/common/Player$Commands;->get(I)I

    move-result v13

    invoke-static {v13, v7}, Landroidx/media3/session/MediaSessionLegacyStub;->convertCommandToPlaybackStateActions(IZ)J

    move-result-wide v13

    or-long/2addr v11, v13

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 1884
    :cond_7
    iget-object v7, v0, Landroidx/media3/session/MediaSessionLegacyStub;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v7}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, v0, Landroidx/media3/session/MediaSessionLegacyStub;->customLayout:Lcom/google/common/collect/ImmutableList;

    const/4 v9, 0x2

    .line 1885
    invoke-static {v7, v9}, Landroidx/media3/session/CommandButton;->containsButtonForSlot(Ljava/util/List;I)Z

    move-result v7

    if-eqz v7, :cond_8

    const-wide/16 v13, -0x11

    and-long/2addr v11, v13

    .line 1888
    :cond_8
    iget-object v7, v0, Landroidx/media3/session/MediaSessionLegacyStub;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v7}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_9

    iget-object v7, v0, Landroidx/media3/session/MediaSessionLegacyStub;->customLayout:Lcom/google/common/collect/ImmutableList;

    const/4 v9, 0x3

    .line 1889
    invoke-static {v7, v9}, Landroidx/media3/session/CommandButton;->containsButtonForSlot(Ljava/util/List;I)Z

    move-result v7

    if-eqz v7, :cond_9

    const-wide/16 v13, -0x21

    and-long/2addr v11, v13

    :cond_9
    if-nez v4, :cond_a

    const-wide/16 v13, -0x101

    and-long/2addr v11, v13

    :cond_a
    const/16 v7, 0x11

    .line 1896
    invoke-virtual {v1, v7}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1897
    invoke-virtual {v1}, Landroidx/media3/session/PlayerWrapper;->getCurrentMediaItemIndex()I

    move-result v7

    invoke-static {v7}, Landroidx/media3/session/LegacyConversions;->convertToQueueItemId(I)J

    move-result-wide v15

    move-wide v5, v15

    goto :goto_8

    :cond_b
    const-wide/16 v5, -0x1

    .line 1899
    :goto_8
    invoke-virtual {v1}, Landroidx/media3/session/PlayerWrapper;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v9

    iget v9, v9, Landroidx/media3/common/PlaybackParameters;->speed:F

    .line 1900
    invoke-virtual {v1}, Landroidx/media3/session/PlayerWrapper;->isPlaying()Z

    move-result v15

    if-eqz v15, :cond_c

    if-eqz v4, :cond_c

    move v15, v9

    goto :goto_9

    :cond_c
    const/4 v15, 0x0

    .line 1902
    :goto_9
    new-instance v7, Landroid/os/Bundle;

    if-eqz v3, :cond_d

    iget-object v13, v3, Landroidx/media3/common/PlaybackException;->extras:Landroid/os/Bundle;

    invoke-direct {v7, v13}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_a

    :cond_d
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    :goto_a
    if-nez v3, :cond_e

    if-eqz v2, :cond_e

    .line 1904
    iget-object v13, v2, Landroidx/media3/session/MediaSessionLegacyStub$LegacyError;->extras:Landroid/os/Bundle;

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1906
    :cond_e
    iget-object v13, v0, Landroidx/media3/session/MediaSessionLegacyStub;->legacyExtras:Landroid/os/Bundle;

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1907
    const-string v13, "EXO_SPEED"

    invoke-virtual {v7, v13, v9}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1908
    invoke-virtual {v1}, Landroidx/media3/session/PlayerWrapper;->getCurrentMediaItemWithCommandCheck()Landroidx/media3/common/MediaItem;

    move-result-object v9

    if-eqz v9, :cond_f

    .line 1909
    const-string v13, ""

    iget-object v14, v9, Landroidx/media3/common/MediaItem;->mediaId:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_f

    .line 1910
    const-string v13, "androidx.media.PlaybackStateCompat.Extras.KEY_MEDIA_ID"

    iget-object v9, v9, Landroidx/media3/common/MediaItem;->mediaId:Ljava/lang/String;

    invoke-virtual {v7, v13, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    if-eqz v4, :cond_10

    .line 1914
    invoke-virtual {v1}, Landroidx/media3/session/PlayerWrapper;->getCurrentPosition()J

    move-result-wide v13

    goto :goto_b

    :cond_10
    const-wide/16 v13, -0x1

    :goto_b
    if-eqz v4, :cond_11

    .line 1918
    invoke-virtual {v1}, Landroidx/media3/session/PlayerWrapper;->getBufferedPosition()J

    move-result-wide v17

    move-object v1, v3

    move-wide/from16 v3, v17

    goto :goto_c

    :cond_11
    move-object v1, v3

    const-wide/16 v3, -0x1

    .line 1920
    :goto_c
    new-instance v9, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    invoke-direct {v9}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;-><init>()V

    move-wide/from16 v17, v11

    move-wide v11, v13

    move v13, v15

    .line 1922
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    move-object/from16 p1, v1

    move-object/from16 v19, v2

    move-wide/from16 v1, v17

    invoke-virtual/range {v9 .. v15}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->setState(IJFJ)Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    move-result-object v9

    .line 1923
    invoke-virtual {v9, v1, v2}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->setActions(J)Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    move-result-object v1

    .line 1924
    invoke-virtual {v1, v5, v6}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->setActiveQueueItemId(J)Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    move-result-object v1

    .line 1925
    invoke-virtual {v1, v3, v4}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->setBufferedPosition(J)Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    move-result-object v1

    .line 1926
    invoke-virtual {v1, v7}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 1927
    :goto_d
    iget-object v3, v0, Landroidx/media3/session/MediaSessionLegacyStub;->customLayout:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-ge v2, v3, :cond_1b

    .line 1928
    iget-object v3, v0, Landroidx/media3/session/MediaSessionLegacyStub;->customLayout:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/session/CommandButton;

    .line 1929
    iget-object v4, v3, Landroidx/media3/session/CommandButton;->sessionCommand:Landroidx/media3/session/SessionCommand;

    if-eqz v4, :cond_1a

    .line 1930
    iget-boolean v5, v3, Landroidx/media3/session/CommandButton;->isEnabled:Z

    if-eqz v5, :cond_1a

    iget v5, v4, Landroidx/media3/session/SessionCommand;->commandCode:I

    if-nez v5, :cond_1a

    iget-object v5, v0, Landroidx/media3/session/MediaSessionLegacyStub;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    .line 1933
    invoke-static {v3, v5, v8}, Landroidx/media3/session/CommandButton;->isButtonCommandAvailable(Landroidx/media3/session/CommandButton;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)Z

    move-result v5

    if-nez v5, :cond_12

    iget-object v5, v4, Landroidx/media3/session/SessionCommand;->customAction:Ljava/lang/String;

    .line 1935
    invoke-static {v5}, Landroidx/media3/session/CommandButton;->isPredefinedCustomCommandButtonCode(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 1936
    :cond_12
    iget v5, v3, Landroidx/media3/session/CommandButton;->icon:I

    if-eqz v5, :cond_13

    const/4 v5, 0x1

    goto :goto_e

    :cond_13
    const/4 v5, 0x0

    .line 1937
    :goto_e
    iget-object v6, v3, Landroidx/media3/session/CommandButton;->iconUri:Landroid/net/Uri;

    if-eqz v6, :cond_14

    const/4 v6, 0x1

    goto :goto_f

    :cond_14
    const/4 v6, 0x0

    :goto_f
    if-nez v5, :cond_16

    if-nez v6, :cond_16

    .line 1939
    iget-object v7, v3, Landroidx/media3/session/CommandButton;->extras:Landroid/os/Bundle;

    invoke-virtual {v7}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_15

    goto :goto_10

    .line 1941
    :cond_15
    iget-object v7, v4, Landroidx/media3/session/SessionCommand;->customExtras:Landroid/os/Bundle;

    goto :goto_11

    .line 1940
    :cond_16
    :goto_10
    new-instance v7, Landroid/os/Bundle;

    iget-object v9, v4, Landroidx/media3/session/SessionCommand;->customExtras:Landroid/os/Bundle;

    invoke-direct {v7, v9}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1942
    :goto_11
    iget-object v9, v3, Landroidx/media3/session/CommandButton;->extras:Landroid/os/Bundle;

    invoke-virtual {v9}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_17

    .line 1943
    iget-object v9, v3, Landroidx/media3/session/CommandButton;->extras:Landroid/os/Bundle;

    invoke-virtual {v7, v9}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_17
    if-eqz v5, :cond_18

    .line 1946
    const-string v5, "androidx.media3.session.EXTRAS_KEY_COMMAND_BUTTON_ICON_COMPAT"

    iget v9, v3, Landroidx/media3/session/CommandButton;->icon:I

    invoke-virtual {v7, v5, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_18
    if-eqz v6, :cond_19

    .line 1950
    iget-object v5, v3, Landroidx/media3/session/CommandButton;->iconUri:Landroid/net/Uri;

    .line 1952
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1950
    const-string v6, "androidx.media3.session.EXTRAS_KEY_COMMAND_BUTTON_ICON_URI_COMPAT"

    invoke-virtual {v7, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1954
    :cond_19
    new-instance v5, Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction$Builder;

    iget-object v4, v4, Landroidx/media3/session/SessionCommand;->customAction:Ljava/lang/String;

    iget-object v6, v3, Landroidx/media3/session/CommandButton;->displayName:Ljava/lang/CharSequence;

    iget v3, v3, Landroidx/media3/session/CommandButton;->iconResId:I

    invoke-direct {v5, v4, v6, v3}, Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 1957
    invoke-virtual {v5, v7}, Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction$Builder;

    move-result-object v3

    .line 1958
    invoke-virtual {v3}, Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction$Builder;->build()Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction;

    move-result-object v3

    .line 1954
    invoke-virtual {v1, v3}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->addCustomAction(Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction;)Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_d

    :cond_1b
    if-eqz p1, :cond_1c

    .line 1963
    invoke-static/range {p1 .. p1}, Landroidx/media3/session/LegacyConversions;->convertToLegacyErrorCode(Landroidx/media3/common/PlaybackException;)I

    move-result v2

    .line 1964
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 1962
    invoke-virtual {v1, v2, v3}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->setErrorMessage(ILjava/lang/CharSequence;)Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    goto :goto_12

    :cond_1c
    if-eqz v19, :cond_1d

    move-object/from16 v2, v19

    .line 1966
    iget v3, v2, Landroidx/media3/session/MediaSessionLegacyStub$LegacyError;->code:I

    iget-object v2, v2, Landroidx/media3/session/MediaSessionLegacyStub$LegacyError;->message:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->setErrorMessage(ILjava/lang/CharSequence;)Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    .line 1968
    :cond_1d
    :goto_12
    invoke-virtual {v1}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->build()Landroidx/media3/session/legacy/PlaybackStateCompat;

    move-result-object v1

    return-object v1
.end method

.method private static createVolumeProviderCompat(Landroidx/media3/session/PlayerWrapper;)Landroidx/media3/session/legacy/VolumeProviderCompat;
    .locals 9

    .line 2038
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getDeviceInfo()Landroidx/media3/common/DeviceInfo;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/DeviceInfo;->playbackType:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2041
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getAvailableCommands()Landroidx/media3/common/Player$Commands;

    move-result-object v0

    const/16 v1, 0x1a

    const/16 v2, 0x22

    .line 2043
    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/Player$Commands;->containsAny([I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x19

    const/16 v2, 0x21

    .line 2046
    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/Player$Commands;->containsAny([I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    :goto_0
    move v2, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 2051
    :goto_1
    new-instance v6, Landroid/os/Handler;

    invoke-virtual {p0}, Landroidx/media3/common/ForwardingPlayer;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2052
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getDeviceVolumeWithCommandCheck()I

    move-result v4

    .line 2054
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getDeviceInfo()Landroidx/media3/common/DeviceInfo;

    move-result-object v0

    .line 2055
    new-instance v1, Landroidx/media3/session/MediaSessionLegacyStub$3;

    iget v3, v0, Landroidx/media3/common/DeviceInfo;->maxVolume:I

    iget-object v5, v0, Landroidx/media3/common/DeviceInfo;->routingControllerId:Ljava/lang/String;

    const/4 v8, 0x1

    move-object v7, p0

    invoke-direct/range {v1 .. v8}, Landroidx/media3/session/MediaSessionLegacyStub$3;-><init>(IIILjava/lang/String;Landroid/os/Handler;Landroidx/media3/session/PlayerWrapper;I)V

    return-object v1
.end method

.method private dispatchCustomCommandAsPredefinedCommand(Landroidx/media3/session/SessionCommand;)V
    .locals 4

    .line 990
    const-string v0, "MediaSessionLegacyStub"

    :try_start_0
    invoke-static {p1}, Landroidx/media3/session/CommandButton;->convertFromPredefinedCustomCommand(Landroidx/media3/session/SessionCommand;)Landroidx/media3/session/CommandButton;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 996
    invoke-virtual {v1}, Landroidx/media3/session/CommandButton;->canExecuteAction()Z

    move-result v2

    if-nez v2, :cond_0

    .line 997
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t execute predefined custom command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroidx/media3/session/SessionCommand;->customAction:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1000
    :cond_0
    iget-object p1, v1, Landroidx/media3/session/CommandButton;->sessionCommand:Landroidx/media3/session/SessionCommand;

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 1001
    iget p1, p1, Landroidx/media3/session/SessionCommand;->commandCode:I

    const v3, 0x9c4a

    if-ne p1, v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1002
    iget-object p1, v1, Landroidx/media3/session/CommandButton;->parameter:Ljava/lang/Object;

    .line 1003
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/Rating;

    .line 1002
    invoke-direct {p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub;->dispatchSessionTaskWithSetRatingSessionCommand(Landroidx/media3/common/Rating;)V

    return-void

    .line 1005
    :cond_2
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/media3/session/CommandButton;->isPlayRequestPlayerAction(Landroidx/media3/common/Player;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1006
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionLegacyStub;->dispatchSessionTaskWithPlayRequest()V

    return-void

    .line 1007
    :cond_3
    iget p1, v1, Landroidx/media3/session/CommandButton;->playerCommand:I

    const/16 v3, 0x1f

    if-ne p1, v3, :cond_4

    .line 1008
    iget-object p1, v1, Landroidx/media3/session/CommandButton;->parameter:Ljava/lang/Object;

    .line 1009
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/MediaItem;

    .line 1008
    invoke-direct {p0, p1, v2, v2}, Landroidx/media3/session/MediaSessionLegacyStub;->handleMediaRequest(Landroidx/media3/common/MediaItem;ZZ)V

    return-void

    .line 1013
    :cond_4
    new-instance v2, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda23;

    invoke-direct {v2, p0, v1}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda23;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/CommandButton;)V

    iget-object v1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroidx/media3/session/legacy/MediaSessionCompat;

    .line 1016
    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaSessionCompat;->getCurrentControllerInfo()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    .line 1013
    invoke-direct {p0, p1, v2, v1, v0}, Landroidx/media3/session/MediaSessionLegacyStub;->dispatchSessionTaskWithPlayerCommand(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Z)V

    return-void

    :catch_0
    move-exception v1

    .line 993
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to convert predefined custom command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroidx/media3/session/SessionCommand;->customAction:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private dispatchSessionTaskWithPlayRequest()V
    .locals 4

    .line 827
    new-instance v0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda26;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;)V

    iget-object v1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroidx/media3/session/legacy/MediaSessionCompat;

    .line 832
    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaSessionCompat;->getCurrentControllerInfo()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 827
    invoke-direct {p0, v3, v0, v1, v2}, Landroidx/media3/session/MediaSessionLegacyStub;->dispatchSessionTaskWithPlayerCommand(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Z)V

    return-void
.end method

.method private dispatchSessionTaskWithPlayerCommand(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Z)V
    .locals 7

    .line 841
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    .line 845
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "RemoteUserInfo is null, ignoring command="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaSessionLegacyStub"

    invoke-static {p2, p1}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 848
    :cond_1
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 849
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda9;

    move-object v2, p0

    move v3, p1

    move-object v5, p2

    move-object v4, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda9;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;ILandroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Landroidx/media3/session/MediaSessionLegacyStub$SessionTask;Z)V

    .line 848
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    return-void
.end method

.method private dispatchSessionTaskWithSessionCommand(Landroidx/media3/session/SessionCommand;Landroidx/media3/session/MediaSessionLegacyStub$SessionTask;)V
    .locals 2

    .line 928
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroidx/media3/session/legacy/MediaSessionCompat;

    .line 929
    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaSessionCompat;->getCurrentControllerInfo()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object v0

    const/4 v1, 0x0

    .line 928
    invoke-direct {p0, p1, v1, p2, v0}, Landroidx/media3/session/MediaSessionLegacyStub;->dispatchSessionTaskWithSessionCommandInternal(Landroidx/media3/session/SessionCommand;ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;)V

    return-void
.end method

.method private dispatchSessionTaskWithSessionCommandInternal(Landroidx/media3/session/SessionCommand;ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;)V
    .locals 7

    if-nez p4, :cond_1

    .line 938
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "RemoteUserInfo is null, ignoring command="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    .line 941
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_0
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 938
    const-string p2, "MediaSessionLegacyStub"

    invoke-static {p2, p1}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 944
    :cond_1
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 945
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda13;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda13;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/SessionCommand;ILandroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Landroidx/media3/session/MediaSessionLegacyStub$SessionTask;)V

    .line 944
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    return-void
.end method

.method private dispatchSessionTaskWithSetRatingSessionCommand(Landroidx/media3/common/Rating;)V
    .locals 3

    .line 910
    new-instance v0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda19;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/common/Rating;)V

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroidx/media3/session/legacy/MediaSessionCompat;

    .line 923
    invoke-virtual {p1}, Landroidx/media3/session/legacy/MediaSessionCompat;->getCurrentControllerInfo()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object p1

    const/4 v1, 0x0

    const v2, 0x9c4a

    .line 910
    invoke-direct {p0, v1, v2, v0, p1}, Landroidx/media3/session/MediaSessionLegacyStub;->dispatchSessionTaskWithSessionCommandInternal(Landroidx/media3/session/SessionCommand;ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;)V

    return-void
.end method

.method private static getBitmapLoadErrorMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 1823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to load bitmap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getServiceComponentByAction(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 2

    .line 1829
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1830
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1831
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p0, 0x0

    .line 1832
    invoke-virtual {v0, v1, p0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1833
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1836
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 1837
    new-instance p1, Landroid/content/ComponentName;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {p1, v0, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private handleMediaRequest(Landroidx/media3/common/MediaItem;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1079
    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->handleMediaRequest(Landroidx/media3/common/MediaItem;ZZ)V

    return-void
.end method

.method private handleMediaRequest(Landroidx/media3/common/MediaItem;ZZ)V
    .locals 1

    .line 1083
    new-instance v0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda12;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/common/MediaItem;ZZ)V

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroidx/media3/session/legacy/MediaSessionCompat;

    .line 1129
    invoke-virtual {p1}, Landroidx/media3/session/legacy/MediaSessionCompat;->getCurrentControllerInfo()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object p1

    const/4 p2, 0x0

    const/16 p3, 0x1f

    .line 1083
    invoke-direct {p0, p3, v0, p1, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->dispatchSessionTaskWithPlayerCommand(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Z)V

    return-void
.end method

.method private handleOnAddQueueItem(Landroidx/media3/session/legacy/MediaDescriptionCompat;I)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    if-gez p2, :cond_0

    goto :goto_0

    .line 1137
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda17;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/legacy/MediaDescriptionCompat;I)V

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroidx/media3/session/legacy/MediaSessionCompat;

    .line 1178
    invoke-virtual {p1}, Landroidx/media3/session/legacy/MediaSessionCompat;->getCurrentControllerInfo()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object p1

    const/4 p2, 0x0

    const/16 v1, 0x14

    .line 1137
    invoke-direct {p0, v1, v0, p1, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->dispatchSessionTaskWithPlayerCommand(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static ignoreFuture(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TT;>;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method private isQueueEnabled()Z
    .locals 3

    .line 1228
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object v0

    .line 1229
    iget-object v1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1230
    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->getAvailableCommands()Landroidx/media3/common/Player$Commands;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static mayNeedButtonReservationWorkaroundForSeekbar(Landroid/content/Context;)Z
    .locals 3

    .line 2147
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    .line 2150
    :cond_0
    invoke-static {p0}, Landroidx/media3/common/util/Util;->isAutomotive(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v2

    .line 2153
    :cond_1
    sget-object p0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v0, "Google"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "motorola"

    .line 2154
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "vivo"

    .line 2155
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Sony"

    .line 2156
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Nothing"

    .line 2157
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "unknown"

    .line 2158
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private needsButtonReservationWorkaroundForSeekbar(Landroidx/media3/session/AndroidAutoConnectionStateObserver;)Z
    .locals 2

    .line 2136
    iget-boolean v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->mayNeedButtonReservationWorkaroundForSeekbar:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_2

    .line 2139
    invoke-virtual {p1}, Landroidx/media3/session/AndroidAutoConnectionStateObserver;->isConnected()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private onAndroidAutoConnectionStateChanged()V
    .locals 2

    .line 1234
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 1235
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda22;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;)V

    .line 1234
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static queryPackageManagerForMediaButtonReceiver(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 3

    .line 417
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 418
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p0, 0x0

    .line 420
    invoke-virtual {v0, v1, p0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 421
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 422
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 423
    new-instance v0, Landroid/content/ComponentName;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 424
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 427
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected 1 broadcast receiver that handles android.intent.action.MEDIA_BUTTON, found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static sendCustomCommandResultWhenReady(Landroid/os/ResultReceiver;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ResultReceiver;",
            "Lcom/google/common/util/concurrent/ListenableFuture;",
            ")V"
        }
    .end annotation

    .line 1184
    new-instance v0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda29;

    invoke-direct {v0, p1, p0}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda29;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Landroid/os/ResultReceiver;)V

    .line 1198
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    .line 1184
    invoke-interface {p1, v0, p0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private static setMediaButtonReceiver(Landroidx/media3/session/legacy/MediaSessionCompat;Landroid/app/PendingIntent;)V
    .locals 0

    .line 1214
    invoke-virtual {p0, p1}, Landroidx/media3/session/legacy/MediaSessionCompat;->setMediaButtonReceiver(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private static setMetadata(Landroidx/media3/session/legacy/MediaSessionCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;)V
    .locals 0

    .line 1208
    invoke-virtual {p0, p1}, Landroidx/media3/session/legacy/MediaSessionCompat;->setMetadata(Landroidx/media3/session/legacy/MediaMetadataCompat;)V

    return-void
.end method

.method private static setQueue(Landroidx/media3/session/legacy/MediaSessionCompat;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/legacy/MediaSessionCompat;",
            "Ljava/util/List<",
            "Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;",
            ">;)V"
        }
    .end annotation

    .line 1219
    invoke-virtual {p0, p1}, Landroidx/media3/session/legacy/MediaSessionCompat;->setQueue(Ljava/util/List;)V

    return-void
.end method

.method private setQueueTitle(Landroidx/media3/session/legacy/MediaSessionCompat;Ljava/lang/CharSequence;)V
    .locals 1

    .line 1224
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionLegacyStub;->isQueueEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat;->setQueueTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private tryGetController(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;)Landroidx/media3/session/MediaSession$ControllerInfo;
    .locals 11

    .line 1024
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    invoke-virtual {v0, p1}, Landroidx/media3/session/ConnectedControllersManager;->getController(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1027
    new-instance v6, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCb;

    invoke-direct {v6, p1}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCb;-><init>(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;)V

    .line 1028
    new-instance v1, Landroidx/media3/session/MediaSession$ControllerInfo;

    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionManager:Landroidx/media3/session/legacy/MediaSessionManager;

    .line 1033
    invoke-virtual {v0, p1}, Landroidx/media3/session/legacy/MediaSessionManager;->isTrustedForMediaControl(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;)Z

    move-result v5

    sget-object v7, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    const/4 v10, 0x0

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    move v9, v0

    goto :goto_0

    :cond_0
    move v9, v10

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Landroidx/media3/session/MediaSession$ControllerInfo;-><init>(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;IIZLandroidx/media3/session/MediaSession$ControllerCb;Landroid/os/Bundle;IZ)V

    .line 1038
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {p1, v1}, Landroidx/media3/session/MediaSessionImpl;->onConnectOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession$ConnectionResult;

    move-result-object p1

    .line 1039
    iget-boolean v0, p1, Landroidx/media3/session/MediaSession$ConnectionResult;->isAccepted:Z

    if-nez v0, :cond_1

    .line 1040
    invoke-interface {v6, v10}, Landroidx/media3/session/MediaSession$ControllerCb;->onDisconnected(I)V

    const/4 p1, 0x0

    return-object p1

    .line 1043
    :cond_1
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    .line 1044
    invoke-virtual {v1}, Landroidx/media3/session/MediaSession$ControllerInfo;->getRemoteUserInfo()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object v2

    iget-object v3, p1, Landroidx/media3/session/MediaSession$ConnectionResult;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    iget-object p1, p1, Landroidx/media3/session/MediaSession$ConnectionResult;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    .line 1043
    invoke-virtual {v0, v2, v1, v3, p1}, Landroidx/media3/session/ConnectedControllersManager;->addController(Ljava/lang/Object;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)V

    .line 1048
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {p1, v1}, Landroidx/media3/session/MediaSessionImpl;->onPostConnectOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;)V

    move-object v0, v1

    .line 1051
    :cond_2
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->connectionTimeoutHandler:Landroidx/media3/session/MediaSessionLegacyStub$ConnectionTimeoutHandler;

    iget-wide v1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->connectionTimeoutMs:J

    invoke-virtual {p1, v0, v1, v2}, Landroidx/media3/session/MediaSessionLegacyStub$ConnectionTimeoutHandler;->disconnectControllerAfterTimeout(Landroidx/media3/session/MediaSession$ControllerInfo;J)V

    return-object v0
.end method

.method private updateCustomLayoutAndLegacyExtrasForMediaButtonPreferences()V
    .locals 6

    .line 1262
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    iget-object v1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    .line 1266
    iget-object v2, p0, Landroidx/media3/session/MediaSessionLegacyStub;->playerCommandsForErrorState:Landroidx/media3/common/Player$Commands;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1268
    :cond_0
    iget-object v2, p0, Landroidx/media3/session/MediaSessionLegacyStub;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    .line 1263
    :goto_0
    invoke-static {v0, v1, v2}, Landroidx/media3/session/CommandButton;->copyWithUnavailableButtonsDisabled(Ljava/util/List;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    const/4 v1, 0x1

    .line 1270
    invoke-static {v0, v1, v1}, Landroidx/media3/session/CommandButton;->getCustomLayoutFromMediaButtonPreferences(Ljava/util/List;ZZ)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->customLayout:Lcom/google/common/collect/ImmutableList;

    .line 1274
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->androidAutoObserver:Landroidx/media3/session/AndroidAutoConnectionStateObserver;

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaSessionLegacyStub;->needsButtonReservationWorkaroundForSeekbar(Landroidx/media3/session/AndroidAutoConnectionStateObserver;)Z

    move-result v0

    const-string v2, "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT"

    const-string v3, "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS"

    const/4 v4, 0x2

    if-eqz v0, :cond_2

    .line 1280
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->customLayout:Lcom/google/common/collect/ImmutableList;

    .line 1281
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    const/4 v5, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->customLayout:Lcom/google/common/collect/ImmutableList;

    .line 1282
    invoke-static {v0, v4}, Landroidx/media3/session/CommandButton;->containsButtonForSlot(Ljava/util/List;I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v5

    .line 1283
    :goto_1
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->legacyExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1285
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->legacyExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void

    .line 1288
    :cond_2
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->legacyExtras:Landroid/os/Bundle;

    iget-object v5, p0, Landroidx/media3/session/MediaSessionLegacyStub;->customLayout:Lcom/google/common/collect/ImmutableList;

    .line 1290
    invoke-static {v5, v4}, Landroidx/media3/session/CommandButton;->containsButtonForSlot(Ljava/util/List;I)Z

    move-result v4

    xor-int/2addr v4, v1

    .line 1288
    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1291
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->legacyExtras:Landroid/os/Bundle;

    iget-object v3, p0, Landroidx/media3/session/MediaSessionLegacyStub;->customLayout:Lcom/google/common/collect/ImmutableList;

    const/4 v4, 0x3

    .line 1293
    invoke-static {v3, v4}, Landroidx/media3/session/CommandButton;->containsButtonForSlot(Ljava/util/List;I)Z

    move-result v3

    xor-int/2addr v1, v3

    .line 1291
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method private updateCustomLayoutAndLegacyExtrasForMediaButtonPreferencesAndInformExtrasChanged()V
    .locals 6

    .line 1240
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->legacyExtras:Landroid/os/Bundle;

    .line 1241
    const-string v1, "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1243
    iget-object v3, p0, Landroidx/media3/session/MediaSessionLegacyStub;->legacyExtras:Landroid/os/Bundle;

    .line 1244
    const-string v4, "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT"

    invoke-virtual {v3, v4, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1246
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionLegacyStub;->updateCustomLayoutAndLegacyExtrasForMediaButtonPreferences()V

    .line 1247
    iget-object v5, p0, Landroidx/media3/session/MediaSessionLegacyStub;->legacyExtras:Landroid/os/Bundle;

    .line 1248
    invoke-virtual {v5, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->legacyExtras:Landroid/os/Bundle;

    .line 1252
    invoke-virtual {v0, v4, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 1257
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionLegacyStub;->getSessionCompat()Landroidx/media3/session/legacy/MediaSessionCompat;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->legacyExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/media3/session/legacy/MediaSessionCompat;->setExtras(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method canResumePlaybackOnStart()Z
    .locals 1

    .line 823
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->broadcastReceiverComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public clearLegacyErrorStatus()V
    .locals 1

    .line 408
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->legacyError:Landroidx/media3/session/MediaSessionLegacyStub$LegacyError;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 409
    iput-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->legacyError:Landroidx/media3/session/MediaSessionLegacyStub$LegacyError;

    .line 410
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaSessionLegacyStub;->updateLegacySessionPlaybackState(Landroidx/media3/session/PlayerWrapper;)V

    :cond_0
    return-void
.end method

.method public getConnectedControllersManager()Landroidx/media3/session/ConnectedControllersManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/media3/session/ConnectedControllersManager<",
            "Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;",
            ">;"
        }
    .end annotation

    .line 819
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    return-object v0
.end method

.method public getControllerLegacyCbForBroadcast()Landroidx/media3/session/MediaSession$ControllerCb;
    .locals 1

    .line 815
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->controllerLegacyCbForBroadcast:Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;

    return-object v0
.end method

.method public getPlatformConnectionResult(Landroidx/media3/session/MediaSession;)Landroidx/media3/session/MediaSession$ConnectionResult;
    .locals 1

    .line 309
    new-instance v0, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;

    invoke-direct {v0, p1}, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;-><init>(Landroidx/media3/session/MediaSession;)V

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    .line 311
    invoke-virtual {v0, p1}, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;->setAvailableSessionCommands(Landroidx/media3/session/SessionCommands;)Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    .line 312
    invoke-virtual {p1, v0}, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;->setAvailablePlayerCommands(Landroidx/media3/common/Player$Commands;)Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;

    move-result-object p1

    .line 313
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1, v0}, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;->setMediaButtonPreferences(Ljava/util/List;)Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;

    goto :goto_0

    .line 316
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->customLayout:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1, v0}, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;->setCustomLayout(Ljava/util/List;)Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;

    .line 318
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;->build()Landroidx/media3/session/MediaSession$ConnectionResult;

    move-result-object p1

    return-object p1
.end method

.method public getSessionCompat()Landroidx/media3/session/legacy/MediaSessionCompat;
    .locals 1

    .line 470
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroidx/media3/session/legacy/MediaSessionCompat;

    return-object v0
.end method

.method handleMediaPlayPauseOnHandler(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;)V
    .locals 2

    .line 550
    new-instance v0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda14;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;)V

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0, p1, v1}, Landroidx/media3/session/MediaSessionLegacyStub;->dispatchSessionTaskWithPlayerCommand(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Z)V

    return-void
.end method

.method maybeUpdateFlags(Landroidx/media3/session/PlayerWrapper;)V
    .locals 1

    const/16 v0, 0x14

    .line 540
    invoke-virtual {p1, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 543
    :goto_0
    iget v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionFlags:I

    if-eq v0, p1, :cond_1

    .line 544
    iput p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionFlags:I

    .line 545
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroidx/media3/session/legacy/MediaSessionCompat;

    invoke-virtual {v0, p1}, Landroidx/media3/session/legacy/MediaSessionCompat;->setFlags(I)V

    :cond_1
    return-void
.end method

.method public onAddQueueItem(Landroidx/media3/session/legacy/MediaDescriptionCompat;)V
    .locals 1

    const/4 v0, -0x1

    .line 774
    invoke-direct {p0, p1, v0}, Landroidx/media3/session/MediaSessionLegacyStub;->handleOnAddQueueItem(Landroidx/media3/session/legacy/MediaDescriptionCompat;I)V

    return-void
.end method

.method public onAddQueueItem(Landroidx/media3/session/legacy/MediaDescriptionCompat;I)V
    .locals 0

    .line 779
    invoke-direct {p0, p1, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->handleOnAddQueueItem(Landroidx/media3/session/legacy/MediaDescriptionCompat;I)V

    return-void
.end method

.method public onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 2

    .line 475
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    const-string v0, "androidx.media3.session.SESSION_COMMAND_MEDIA3_PLAY_REQUEST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 481
    :cond_0
    const-string v0, "androidx.media3.session.SESSION_COMMAND_REQUEST_SESSION3_TOKEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 482
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getToken()Landroidx/media3/session/SessionToken;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/SessionToken;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p3, p2, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    .line 485
    :cond_1
    new-instance v0, Landroidx/media3/session/SessionCommand;

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-direct {v0, p1, v1}, Landroidx/media3/session/SessionCommand;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 486
    new-instance p1, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda27;

    invoke-direct {p1, p0, v0, p2, p3}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda27;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    invoke-direct {p0, v0, p1}, Landroidx/media3/session/MediaSessionLegacyStub;->dispatchSessionTaskWithSessionCommand(Landroidx/media3/session/SessionCommand;Landroidx/media3/session/MediaSessionLegacyStub$SessionTask;)V

    return-void
.end method

.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 505
    const-string v0, "androidx.media3.session.SESSION_COMMAND_MEDIA3_PLAY_REQUEST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    goto :goto_0

    .line 509
    :cond_1
    sget-object p2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 510
    :goto_0
    new-instance v0, Landroidx/media3/session/SessionCommand;

    invoke-direct {v0, p1, p2}, Landroidx/media3/session/SessionCommand;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 511
    iget-object p1, v0, Landroidx/media3/session/SessionCommand;->customAction:Ljava/lang/String;

    invoke-static {p1}, Landroidx/media3/session/CommandButton;->isPredefinedCustomCommandButtonCode(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 512
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaSessionLegacyStub;->dispatchCustomCommandAsPredefinedCommand(Landroidx/media3/session/SessionCommand;)V

    return-void

    .line 515
    :cond_2
    new-instance p1, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda16;

    invoke-direct {p1, p0, v0, p2}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda16;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)V

    invoke-direct {p0, v0, p1}, Landroidx/media3/session/MediaSessionLegacyStub;->dispatchSessionTaskWithSessionCommand(Landroidx/media3/session/SessionCommand;Landroidx/media3/session/MediaSessionLegacyStub$SessionTask;)V

    return-void
.end method

.method public onFastForward()V
    .locals 4

    .line 711
    new-instance v0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;)V

    iget-object v1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroidx/media3/session/legacy/MediaSessionCompat;

    .line 714
    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaSessionCompat;->getCurrentControllerInfo()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v3, 0xc

    .line 711
    invoke-direct {p0, v3, v0, v1, v2}, Landroidx/media3/session/MediaSessionLegacyStub;->dispatchSessionTaskWithPlayerCommand(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Z)V

    return-void
.end method

.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 10

    .line 525
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    new-instance v1, Landroidx/media3/session/MediaSession$ControllerInfo;

    iget-object v2, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroidx/media3/session/legacy/MediaSessionCompat;

    .line 527
    invoke-virtual {v2}, Landroidx/media3/session/legacy/MediaSessionCompat;->getCurrentControllerInfo()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    sget-object v7, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x21

    if-lt v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v9, v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v9}, Landroidx/media3/session/MediaSession$ControllerInfo;-><init>(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;IIZLandroidx/media3/session/MediaSession$ControllerCb;Landroid/os/Bundle;IZ)V

    .line 525
    invoke-virtual {v0, v1, p1}, Landroidx/media3/session/MediaSessionImpl;->onMediaButtonEvent(Landroidx/media3/session/MediaSession$ControllerInfo;Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 3

    .line 621
    new-instance v0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda10;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;)V

    iget-object v1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroidx/media3/session/legacy/MediaSessionCompat;

    .line 624
    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaSessionCompat;->getCurrentControllerInfo()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    const/4 v2, 0x1

    .line 621
    invoke-direct {p0, v2, v0, v1, v2}, Landroidx/media3/session/MediaSessionLegacyStub;->dispatchSessionTaskWithPlayerCommand(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Z)V

    return-void
.end method

.method public onPlay()V
    .locals 0

    .line 593
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionLegacyStub;->dispatchSessionTaskWithPlayRequest()V

    return-void
.end method

.method public onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 599
    invoke-static {p1, v0, v0, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->createMediaItemForMediaRequest(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/media3/common/MediaItem;

    move-result-object p1

    const/4 p2, 0x1

    .line 598
    invoke-direct {p0, p1, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->handleMediaRequest(Landroidx/media3/common/MediaItem;Z)V

    return-void
.end method

.method public onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 607
    invoke-static {v0, v0, p1, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->createMediaItemForMediaRequest(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/media3/common/MediaItem;

    move-result-object p1

    const/4 p2, 0x1

    .line 606
    invoke-direct {p0, p1, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->handleMediaRequest(Landroidx/media3/common/MediaItem;Z)V

    return-void
.end method

.method public onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 614
    invoke-static {v0, p1, v0, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->createMediaItemForMediaRequest(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/media3/common/MediaItem;

    move-result-object p1

    const/4 p2, 0x1

    .line 613
    invoke-direct {p0, p1, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->handleMediaRequest(Landroidx/media3/common/MediaItem;Z)V

    return-void
.end method

.method public onPrepare()V
    .locals 4

    .line 561
    new-instance v0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda28;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda28;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;)V

    iget-object v1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroidx/media3/session/legacy/MediaSessionCompat;

    .line 564
    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaSessionCompat;->getCurrentControllerInfo()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    .line 561
    invoke-direct {p0, v3, v0, v1, v2}, Landroidx/media3/session/MediaSessionLegacyStub;->dispatchSessionTaskWithPlayerCommand(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Z)V

    return-void
.end method

.method public onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 571
    invoke-static {p1, v0, v0, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->createMediaItemForMediaRequest(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/media3/common/MediaItem;

    move-result-object p1

    const/4 p2, 0x0

    .line 570
    invoke-direct {p0, p1, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->handleMediaRequest(Landroidx/media3/common/MediaItem;Z)V

    return-void
.end method

.method public onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 579
    invoke-static {v0, v0, p1, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->createMediaItemForMediaRequest(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/media3/common/MediaItem;

    move-result-object p1

    const/4 p2, 0x0

    .line 578
    invoke-direct {p0, p1, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->handleMediaRequest(Landroidx/media3/common/MediaItem;Z)V

    return-void
.end method

.method public onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 586
    invoke-static {v0, p1, v0, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->createMediaItemForMediaRequest(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/media3/common/MediaItem;

    move-result-object p1

    const/4 p2, 0x0

    .line 585
    invoke-direct {p0, p1, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->handleMediaRequest(Landroidx/media3/common/MediaItem;Z)V

    return-void
.end method

.method public onRemoveQueueItem(Landroidx/media3/session/legacy/MediaDescriptionCompat;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 787
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/legacy/MediaDescriptionCompat;)V

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroidx/media3/session/legacy/MediaSessionCompat;

    .line 810
    invoke-virtual {p1}, Landroidx/media3/session/legacy/MediaSessionCompat;->getCurrentControllerInfo()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object p1

    const/4 v1, 0x1

    const/16 v2, 0x14

    .line 787
    invoke-direct {p0, v2, v0, p1, v1}, Landroidx/media3/session/MediaSessionLegacyStub;->dispatchSessionTaskWithPlayerCommand(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Z)V

    return-void
.end method

.method public onRewind()V
    .locals 4

    .line 720
    new-instance v0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda25;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;)V

    iget-object v1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroidx/media3/session/legacy/MediaSessionCompat;

    .line 723
    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaSessionCompat;->getCurrentControllerInfo()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v3, 0xb

    .line 720
    invoke-direct {p0, v3, v0, v1, v2}, Landroidx/media3/session/MediaSessionLegacyStub;->dispatchSessionTaskWithPlayerCommand(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Z)V

    return-void
.end method

.method public onSeekTo(J)V
    .locals 2

    .line 639
    new-instance v0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda7;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;J)V

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroidx/media3/session/legacy/MediaSessionCompat;

    .line 642
    invoke-virtual {p1}, Landroidx/media3/session/legacy/MediaSessionCompat;->getCurrentControllerInfo()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v1, 0x5

    .line 639
    invoke-direct {p0, v1, v0, p1, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->dispatchSessionTaskWithPlayerCommand(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Z)V

    return-void
.end method

.method public onSetCaptioningEnabled(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onSetPlaybackSpeed(F)V
    .locals 3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    return-void

    .line 685
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda11;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;F)V

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroidx/media3/session/legacy/MediaSessionCompat;

    .line 688
    invoke-virtual {p1}, Landroidx/media3/session/legacy/MediaSessionCompat;->getCurrentControllerInfo()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object p1

    const/4 v1, 0x1

    const/16 v2, 0xd

    .line 685
    invoke-direct {p0, v2, v0, p1, v1}, Landroidx/media3/session/MediaSessionLegacyStub;->dispatchSessionTaskWithPlayerCommand(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Z)V

    return-void
.end method

.method public onSetRating(Landroidx/media3/session/legacy/RatingCompat;)V
    .locals 1

    const/4 v0, 0x0

    .line 729
    invoke-virtual {p0, p1, v0}, Landroidx/media3/session/MediaSessionLegacyStub;->onSetRating(Landroidx/media3/session/legacy/RatingCompat;Landroid/os/Bundle;)V

    return-void
.end method

.method public onSetRating(Landroidx/media3/session/legacy/RatingCompat;Landroid/os/Bundle;)V
    .locals 1

    .line 734
    invoke-static {p1}, Landroidx/media3/session/LegacyConversions;->convertToRating(Landroidx/media3/session/legacy/RatingCompat;)Landroidx/media3/common/Rating;

    move-result-object p2

    if-nez p2, :cond_0

    .line 736
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring invalid RatingCompat "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaSessionLegacyStub"

    invoke-static {p2, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 739
    :cond_0
    invoke-direct {p0, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->dispatchSessionTaskWithSetRatingSessionCommand(Landroidx/media3/common/Rating;)V

    return-void
.end method

.method public onSetRepeatMode(I)V
    .locals 3

    .line 749
    new-instance v0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda24;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;I)V

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroidx/media3/session/legacy/MediaSessionCompat;

    .line 756
    invoke-virtual {p1}, Landroidx/media3/session/legacy/MediaSessionCompat;->getCurrentControllerInfo()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object p1

    const/4 v1, 0x1

    const/16 v2, 0xf

    .line 749
    invoke-direct {p0, v2, v0, p1, v1}, Landroidx/media3/session/MediaSessionLegacyStub;->dispatchSessionTaskWithPlayerCommand(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Z)V

    return-void
.end method

.method public onSetShuffleMode(I)V
    .locals 3

    .line 762
    new-instance v0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda8;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;I)V

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroidx/media3/session/legacy/MediaSessionCompat;

    .line 768
    invoke-virtual {p1}, Landroidx/media3/session/legacy/MediaSessionCompat;->getCurrentControllerInfo()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object p1

    const/4 v1, 0x1

    const/16 v2, 0xe

    .line 762
    invoke-direct {p0, v2, v0, p1, v1}, Landroidx/media3/session/MediaSessionLegacyStub;->dispatchSessionTaskWithPlayerCommand(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Z)V

    return-void
.end method

.method public onSkipToNext()V
    .locals 4

    .line 648
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 649
    new-instance v0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda5;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;)V

    iget-object v3, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroidx/media3/session/legacy/MediaSessionCompat;

    .line 652
    invoke-virtual {v3}, Landroidx/media3/session/legacy/MediaSessionCompat;->getCurrentControllerInfo()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object v3

    .line 649
    invoke-direct {p0, v1, v0, v3, v2}, Landroidx/media3/session/MediaSessionLegacyStub;->dispatchSessionTaskWithPlayerCommand(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Z)V

    return-void

    .line 655
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda6;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;)V

    iget-object v1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroidx/media3/session/legacy/MediaSessionCompat;

    .line 658
    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaSessionCompat;->getCurrentControllerInfo()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    const/16 v3, 0x8

    .line 655
    invoke-direct {p0, v3, v0, v1, v2}, Landroidx/media3/session/MediaSessionLegacyStub;->dispatchSessionTaskWithPlayerCommand(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Z)V

    return-void
.end method

.method public onSkipToPrevious()V
    .locals 4

    .line 665
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 666
    new-instance v0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda20;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;)V

    iget-object v3, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroidx/media3/session/legacy/MediaSessionCompat;

    .line 669
    invoke-virtual {v3}, Landroidx/media3/session/legacy/MediaSessionCompat;->getCurrentControllerInfo()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object v3

    .line 666
    invoke-direct {p0, v1, v0, v3, v2}, Landroidx/media3/session/MediaSessionLegacyStub;->dispatchSessionTaskWithPlayerCommand(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Z)V

    return-void

    .line 672
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda21;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;)V

    iget-object v1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroidx/media3/session/legacy/MediaSessionCompat;

    .line 675
    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaSessionCompat;->getCurrentControllerInfo()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    const/4 v3, 0x6

    .line 672
    invoke-direct {p0, v3, v0, v1, v2}, Landroidx/media3/session/MediaSessionLegacyStub;->dispatchSessionTaskWithPlayerCommand(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Z)V

    return-void
.end method

.method public onSkipToQueueItem(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    return-void

    .line 697
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda15;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;J)V

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroidx/media3/session/legacy/MediaSessionCompat;

    .line 705
    invoke-virtual {p1}, Landroidx/media3/session/legacy/MediaSessionCompat;->getCurrentControllerInfo()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object p1

    const/4 p2, 0x1

    const/16 v1, 0xa

    .line 697
    invoke-direct {p0, v1, v0, p1, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->dispatchSessionTaskWithPlayerCommand(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Z)V

    return-void
.end method

.method public onStop()V
    .locals 4

    .line 630
    new-instance v0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda30;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda30;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;)V

    iget-object v1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroidx/media3/session/legacy/MediaSessionCompat;

    .line 633
    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaSessionCompat;->getCurrentControllerInfo()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    .line 630
    invoke-direct {p0, v3, v0, v1, v2}, Landroidx/media3/session/MediaSessionLegacyStub;->dispatchSessionTaskWithPlayerCommand(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Z)V

    return-void
.end method

.method public release()V
    .locals 4

    .line 442
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_1

    .line 443
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->broadcastReceiverComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    .line 445
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroidx/media3/session/legacy/MediaSessionCompat;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/session/MediaSessionLegacyStub;->setMediaButtonReceiver(Landroidx/media3/session/legacy/MediaSessionCompat;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 448
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {v1}, Landroidx/media3/session/MediaSessionImpl;->getUri()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 449
    iget-object v1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->broadcastReceiverComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 450
    iget-object v1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 452
    invoke-virtual {v1}, Landroidx/media3/session/MediaSessionImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Landroidx/media3/session/MediaSessionLegacyStub;->PENDING_INTENT_FLAG_MUTABLE:I

    .line 451
    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 456
    iget-object v1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroidx/media3/session/legacy/MediaSessionCompat;

    invoke-static {v1, v0}, Landroidx/media3/session/MediaSessionLegacyStub;->setMediaButtonReceiver(Landroidx/media3/session/legacy/MediaSessionCompat;Landroid/app/PendingIntent;)V

    .line 459
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->runtimeBroadcastReceiver:Landroidx/media3/session/MediaSessionLegacyStub$MediaButtonReceiver;

    if-eqz v0, :cond_2

    .line 460
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->runtimeBroadcastReceiver:Landroidx/media3/session/MediaSessionLegacyStub$MediaButtonReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 462
    :cond_2
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->androidAutoObserver:Landroidx/media3/session/AndroidAutoConnectionStateObserver;

    if-eqz v0, :cond_3

    .line 463
    invoke-virtual {v0}, Landroidx/media3/session/AndroidAutoConnectionStateObserver;->release()V

    .line 466
    :cond_3
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroidx/media3/session/legacy/MediaSessionCompat;

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaSessionCompat;->release()V

    return-void
.end method

.method public setAvailableCommands(Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)V
    .locals 2

    .line 283
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->customPlaybackException:Landroidx/media3/common/PlaybackException;

    if-eqz v0, :cond_0

    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    const/16 v1, 0x11

    .line 287
    invoke-virtual {v0, v1}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    move-result v0

    .line 288
    invoke-virtual {p2, v1}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 290
    :goto_0
    iput-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    .line 291
    iput-object p2, p0, Landroidx/media3/session/MediaSessionLegacyStub;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    .line 293
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 294
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionLegacyStub;->updateCustomLayoutAndLegacyExtrasForMediaButtonPreferencesAndInformExtrasChanged()V

    :cond_2
    if-eqz v0, :cond_3

    .line 298
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub;->updateLegacySessionPlaybackStateAndQueue(Landroidx/media3/session/PlayerWrapper;)V

    return-void

    .line 300
    :cond_3
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub;->updateLegacySessionPlaybackState(Landroidx/media3/session/PlayerWrapper;)V

    return-void
.end method

.method public setLegacyControllerDisconnectTimeoutMs(J)V
    .locals 0

    .line 1057
    iput-wide p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->connectionTimeoutMs:J

    return-void
.end method

.method public setLegacyError(Landroidx/media3/session/LibraryResult;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/LibraryResult<",
            "*>;Z)V"
        }
    .end annotation

    .line 380
    iget v0, p1, Landroidx/media3/session/LibraryResult;->resultCode:I

    invoke-static {v0}, Landroidx/media3/session/LegacyConversions;->convertToLegacyErrorCode(I)I

    move-result v3

    .line 381
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->legacyError:Landroidx/media3/session/MediaSessionLegacyStub$LegacyError;

    if-eqz v0, :cond_0

    iget v0, v0, Landroidx/media3/session/MediaSessionLegacyStub$LegacyError;->code:I

    if-ne v0, v3, :cond_0

    return-void

    .line 388
    :cond_0
    iget-object v0, p1, Landroidx/media3/session/LibraryResult;->sessionError:Landroidx/media3/session/SessionError;

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, v0, Landroidx/media3/session/SessionError;->message:Ljava/lang/String;

    :goto_0
    move-object v4, v0

    goto :goto_1

    .line 390
    :cond_1
    const-string v0, "no error message provided"

    goto :goto_0

    .line 391
    :goto_1
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 392
    iget-object v1, p1, Landroidx/media3/session/LibraryResult;->params:Landroidx/media3/session/MediaLibraryService$LibraryParams;

    if-eqz v1, :cond_3

    iget-object v1, v1, Landroidx/media3/session/MediaLibraryService$LibraryParams;->extras:Landroid/os/Bundle;

    const-string v2, "android.media.extras.ERROR_RESOLUTION_ACTION_INTENT"

    .line 393
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 395
    iget-object p1, p1, Landroidx/media3/session/LibraryResult;->params:Landroidx/media3/session/MediaLibraryService$LibraryParams;

    iget-object v0, p1, Landroidx/media3/session/MediaLibraryService$LibraryParams;->extras:Landroid/os/Bundle;

    :cond_2
    :goto_2
    move-object v5, v0

    goto :goto_3

    .line 396
    :cond_3
    iget-object p1, p1, Landroidx/media3/session/LibraryResult;->sessionError:Landroidx/media3/session/SessionError;

    if-eqz p1, :cond_2

    .line 397
    iget-object v0, p1, Landroidx/media3/session/SessionError;->extras:Landroid/os/Bundle;

    goto :goto_2

    .line 399
    :goto_3
    new-instance v1, Landroidx/media3/session/MediaSessionLegacyStub$LegacyError;

    const/4 v6, 0x0

    move v2, p2

    invoke-direct/range {v1 .. v6}, Landroidx/media3/session/MediaSessionLegacyStub$LegacyError;-><init>(ZILjava/lang/String;Landroid/os/Bundle;Landroidx/media3/session/MediaSessionLegacyStub$1;)V

    iput-object v1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->legacyError:Landroidx/media3/session/MediaSessionLegacyStub$LegacyError;

    .line 400
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub;->updateLegacySessionPlaybackState(Landroidx/media3/session/PlayerWrapper;)V

    return-void
.end method

.method public setPlatformCustomLayout(Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList;",
            ")V"
        }
    .end annotation

    .line 327
    iput-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->customLayout:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public setPlatformMediaButtonPreferences(Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList;",
            ")V"
        }
    .end annotation

    .line 338
    iput-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    .line 339
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionLegacyStub;->updateCustomLayoutAndLegacyExtrasForMediaButtonPreferencesAndInformExtrasChanged()V

    return-void
.end method

.method public setPlaybackException(Landroidx/media3/common/PlaybackException;Landroidx/media3/common/Player$Commands;)V
    .locals 1

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 352
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 355
    iput-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->customPlaybackException:Landroidx/media3/common/PlaybackException;

    .line 356
    iput-object p2, p0, Landroidx/media3/session/MediaSessionLegacyStub;->playerCommandsForErrorState:Landroidx/media3/common/Player$Commands;

    if-eqz p1, :cond_3

    .line 358
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub;->updateLegacySessionPlaybackState(Landroidx/media3/session/PlayerWrapper;)V

    .line 359
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub;->maybeUpdateFlags(Landroidx/media3/session/PlayerWrapper;)V

    :cond_3
    return-void
.end method

.method public start()V
    .locals 2

    .line 437
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroidx/media3/session/legacy/MediaSessionCompat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/session/legacy/MediaSessionCompat;->setActive(Z)V

    return-void
.end method

.method public updateLegacySessionPlaybackState(Landroidx/media3/session/PlayerWrapper;)V
    .locals 2

    .line 1061
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 1062
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/PlayerWrapper;)V

    .line 1061
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateLegacySessionPlaybackStateAndQueue(Landroidx/media3/session/PlayerWrapper;)V
    .locals 2

    .line 1067
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 1068
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda18;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/PlayerWrapper;)V

    .line 1067
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    return-void
.end method
