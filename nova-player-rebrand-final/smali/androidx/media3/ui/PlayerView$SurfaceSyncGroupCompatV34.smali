.class final Landroidx/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;
.super Ljava/lang/Object;
.source "PlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/ui/PlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SurfaceSyncGroupCompatV34"
.end annotation


# instance fields
.field surfaceSyncGroup:Landroid/window/SurfaceSyncGroup;


# direct methods
.method public static synthetic $r8$lambda$iweixzu_GrrtIiH-f3JQWLlY4aE(Landroidx/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;Landroid/view/SurfaceView;Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2016
    invoke-static {p1}, Landroidx/media3/ui/PlayerView$SurfaceSyncGroupCompatV34$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/SurfaceView;)Landroid/view/AttachedSurfaceControl;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2021
    :cond_0
    const-string v0, "exo-sync-b-334901521"

    invoke-static {v0}, Landroidx/media3/ui/PlayerView$SurfaceSyncGroupCompatV34$$ExternalSyntheticApiModelOutline4;->m(Ljava/lang/String;)Landroid/window/SurfaceSyncGroup;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;->surfaceSyncGroup:Landroid/window/SurfaceSyncGroup;

    .line 2022
    new-instance p0, Landroidx/media3/ui/PlayerView$SurfaceSyncGroupCompatV34$$ExternalSyntheticLambda7;

    invoke-direct {p0}, Landroidx/media3/ui/PlayerView$SurfaceSyncGroupCompatV34$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {v0, p1, p0}, Landroidx/media3/ui/PlayerView$SurfaceSyncGroupCompatV34$$ExternalSyntheticApiModelOutline2;->m(Landroid/window/SurfaceSyncGroup;Landroid/view/AttachedSurfaceControl;Ljava/lang/Runnable;)Z

    move-result p0

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 2023
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 2024
    invoke-static {}, Landroidx/media3/ui/PlayerView$SurfaceSyncGroupCompatV34$$ExternalSyntheticApiModelOutline5;->m()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-static {p1, p0}, Landroidx/media3/ui/PlayerView$SurfaceSyncGroupCompatV34$$ExternalSyntheticApiModelOutline3;->m(Landroid/view/AttachedSurfaceControl;Landroid/view/SurfaceControl$Transaction;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$nEn4C8kWswqVIVXGwXs7jB9x1vY()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/ui/PlayerView$1;)V
    .locals 0

    .line 2007
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;-><init>()V

    return-void
.end method


# virtual methods
.method public maybeMarkSyncReadyAndClear()V
    .locals 1

    .line 2029
    iget-object v0, p0, Landroidx/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;->surfaceSyncGroup:Landroid/window/SurfaceSyncGroup;

    if-eqz v0, :cond_0

    .line 2030
    invoke-static {v0}, Landroidx/media3/ui/PlayerView$SurfaceSyncGroupCompatV34$$ExternalSyntheticApiModelOutline0;->m(Landroid/window/SurfaceSyncGroup;)V

    const/4 v0, 0x0

    .line 2031
    iput-object v0, p0, Landroidx/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;->surfaceSyncGroup:Landroid/window/SurfaceSyncGroup;

    :cond_0
    return-void
.end method

.method public postRegister(Landroid/os/Handler;Landroid/view/SurfaceView;Ljava/lang/Runnable;)V
    .locals 1

    .line 2013
    new-instance v0, Landroidx/media3/ui/PlayerView$SurfaceSyncGroupCompatV34$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p2, p3}, Landroidx/media3/ui/PlayerView$SurfaceSyncGroupCompatV34$$ExternalSyntheticLambda6;-><init>(Landroidx/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;Landroid/view/SurfaceView;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
