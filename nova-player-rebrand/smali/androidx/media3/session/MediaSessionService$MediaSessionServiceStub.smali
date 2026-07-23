.class final Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;
.super Landroidx/media3/session/IMediaSessionService$Stub;
.source "MediaSessionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaSessionServiceStub"
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final pendingControllers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/media3/session/IMediaController;",
            ">;"
        }
    .end annotation
.end field

.field private final serviceReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/media3/session/MediaSessionService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$a2vlKHO1aK029M2ENibzAKEiHbw(Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;Landroidx/media3/session/IMediaController;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Landroidx/media3/session/ConnectionRequest;Z)V
    .locals 9

    .line 888
    iget-object v0, p0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->pendingControllers:Ljava/util/Set;

    .line 888
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 891
    :try_start_0
    iget-object p0, p0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->serviceReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/MediaSessionService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    .line 919
    invoke-static {p1}, Landroidx/media3/session/SessionUtil;->disconnectIMediaController(Landroidx/media3/session/IMediaController;)V

    return-void

    .line 895
    :cond_0
    :try_start_1
    new-instance v0, Landroidx/media3/session/MediaSession$ControllerInfo;

    iget v2, p3, Landroidx/media3/session/ConnectionRequest;->libraryVersion:I

    iget v3, p3, Landroidx/media3/session/ConnectionRequest;->controllerInterfaceVersion:I

    new-instance v5, Landroidx/media3/session/MediaSessionStub$Controller2Cb;

    invoke-direct {v5, p1, v3}, Landroidx/media3/session/MediaSessionStub$Controller2Cb;-><init>(Landroidx/media3/session/IMediaController;I)V

    iget-object v6, p3, Landroidx/media3/session/ConnectionRequest;->connectionHints:Landroid/os/Bundle;

    iget v7, p3, Landroidx/media3/session/ConnectionRequest;->maxCommandsForMediaItems:I

    const/4 v8, 0x1

    move-object v1, p2

    move v4, p4

    invoke-direct/range {v0 .. v8}, Landroidx/media3/session/MediaSession$ControllerInfo;-><init>(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;IIZLandroidx/media3/session/MediaSession$ControllerCb;Landroid/os/Bundle;IZ)V

    .line 907
    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaSessionService;->onGetSession(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_1

    .line 919
    invoke-static {p1}, Landroidx/media3/session/SessionUtil;->disconnectIMediaController(Landroidx/media3/session/IMediaController;)V

    return-void

    .line 911
    :cond_1
    :try_start_2
    invoke-virtual {p0, p2}, Landroidx/media3/session/MediaSessionService;->addSession(Landroidx/media3/session/MediaSession;)V

    .line 912
    invoke-virtual {p2, p1, v0}, Landroidx/media3/session/MediaSession;->handleControllerConnectionFromService(Landroidx/media3/session/IMediaController;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 916
    :try_start_3
    const-string p2, "MSessionService"

    const-string p3, "Failed to add a session to session service"

    invoke-static {p2, p3, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 919
    invoke-static {p1}, Landroidx/media3/session/SessionUtil;->disconnectIMediaController(Landroidx/media3/session/IMediaController;)V

    return-void

    :goto_0
    invoke-static {p1}, Landroidx/media3/session/SessionUtil;->disconnectIMediaController(Landroidx/media3/session/IMediaController;)V

    .line 921
    throw p0
.end method

.method public constructor <init>(Landroidx/media3/session/MediaSessionService;)V
    .locals 1

    .line 834
    invoke-direct {p0}, Landroidx/media3/session/IMediaSessionService$Stub;-><init>()V

    .line 835
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->serviceReference:Ljava/lang/ref/WeakReference;

    .line 836
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 837
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->handler:Landroid/os/Handler;

    .line 839
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1}, Lj$/util/DesugarCollections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->pendingControllers:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public connect(Landroidx/media3/session/IMediaController;Landroid/os/Bundle;)V
    .locals 10

    .line 845
    const-string v1, "MSessionService"

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v4, p1

    goto/16 :goto_1

    .line 852
    :cond_1
    :try_start_0
    invoke-static {p2}, Landroidx/media3/session/ConnectionRequest;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/ConnectionRequest;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 859
    iget-object p2, p0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->serviceReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/session/MediaSessionService;

    if-nez p2, :cond_2

    .line 861
    invoke-static {p1}, Landroidx/media3/session/SessionUtil;->disconnectIMediaController(Landroidx/media3/session/IMediaController;)V

    return-void

    .line 864
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 865
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 866
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    if-eqz v0, :cond_3

    goto :goto_0

    .line 867
    :cond_3
    iget v0, v6, Landroidx/media3/session/ConnectionRequest;->pid:I

    .line 868
    :goto_0
    iget-object v3, v6, Landroidx/media3/session/ConnectionRequest;->packageName:Ljava/lang/String;

    invoke-static {p2, v3, v2}, Landroidx/media3/session/SessionUtil;->checkPackageValidity(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    .line 869
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring connection from invalid package name "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v6, Landroidx/media3/session/ConnectionRequest;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (uid="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    invoke-static {p1}, Landroidx/media3/session/SessionUtil;->disconnectIMediaController(Landroidx/media3/session/IMediaController;)V

    return-void

    .line 879
    :cond_4
    new-instance v5, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    iget-object v1, v6, Landroidx/media3/session/ConnectionRequest;->packageName:Ljava/lang/String;

    invoke-direct {v5, v1, v0, v2}, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;-><init>(Ljava/lang/String;II)V

    .line 882
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroidx/media3/session/legacy/MediaSessionManager;->getSessionManager(Landroid/content/Context;)Landroidx/media3/session/legacy/MediaSessionManager;

    move-result-object p2

    .line 883
    invoke-virtual {p2, v5}, Landroidx/media3/session/legacy/MediaSessionManager;->isTrustedForMediaControl(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;)Z

    move-result v7

    .line 884
    iget-object p2, p0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->pendingControllers:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 886
    :try_start_1
    iget-object p2, p0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->handler:Landroid/os/Handler;

    new-instance v2, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub$$ExternalSyntheticLambda0;

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;Landroidx/media3/session/IMediaController;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Landroidx/media3/session/ConnectionRequest;Z)V

    invoke-virtual {p2, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 924
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 925
    throw p1

    :catch_0
    move-exception v0

    move-object v4, p1

    move-object p1, v0

    .line 855
    const-string p2, "Ignoring malformed Bundle for ConnectionRequest"

    invoke-static {v1, p2, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 856
    invoke-static {v4}, Landroidx/media3/session/SessionUtil;->disconnectIMediaController(Landroidx/media3/session/IMediaController;)V

    return-void

    .line 847
    :goto_1
    invoke-static {v4}, Landroidx/media3/session/SessionUtil;->disconnectIMediaController(Landroidx/media3/session/IMediaController;)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 929
    iget-object v0, p0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->serviceReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 930
    iget-object v0, p0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 931
    iget-object v0, p0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->pendingControllers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/IMediaController;

    .line 932
    invoke-static {v1}, Landroidx/media3/session/SessionUtil;->disconnectIMediaController(Landroidx/media3/session/IMediaController;)V

    goto :goto_0

    .line 934
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->pendingControllers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method
