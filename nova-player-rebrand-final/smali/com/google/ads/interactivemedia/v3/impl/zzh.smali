.class public final Lcom/google/ads/interactivemedia/v3/impl/zzh;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/impl/zzby;


# instance fields
.field private final zza:Lcom/google/ads/interactivemedia/v3/impl/zzbz;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Landroid/view/View;

.field private zzd:Lcom/google/ads/interactivemedia/v3/impl/zzc;

.field private zze:Landroid/app/Activity;

.field private zzf:Z

.field private final zzg:Lcom/google/ads/interactivemedia/v3/internal/zzub;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/zzbz;Landroid/view/View;Lcom/google/ads/interactivemedia/v3/internal/zzub;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zzb:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbz;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zzc:Landroid/view/View;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zze:Landroid/app/Activity;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zzd:Lcom/google/ads/interactivemedia/v3/impl/zzc;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zzf:Z

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzub;

    return-void
.end method

.method private static zzl(Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;F)Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;->builder()Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;->left()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p1

    float-to-double v1, v1

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData$Builder;->left(I)Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData$Builder;

    .line 3
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;->top()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p1

    float-to-double v1, v1

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData$Builder;->top(I)Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData$Builder;

    .line 5
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p1

    float-to-double v1, v1

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData$Builder;->height(I)Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData$Builder;

    .line 7
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;->width()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, p1

    float-to-double p0, p0

    .line 8
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    .line 7
    invoke-virtual {v0, p0}, Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData$Builder;->width(I)Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData$Builder;

    .line 9
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData$Builder;->build()Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;

    move-result-object p0

    return-object p0
.end method

.method private final zzm()Landroid/util/DisplayMetrics;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zzc:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method private final zzn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7

    .line 1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;->builder()Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zzc:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData$Builder;->locationOnScreenOfView(Landroid/view/View;)Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData$Builder;->build()Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zzm()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v0, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zzl(Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;F)Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;

    move-result-object v0

    new-instance v2, Landroid/graphics/Rect;

    .line 3
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 4
    invoke-virtual {v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v3

    if-nez v3, :cond_1

    .line 7
    :cond_0
    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;->builder()Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData$Builder;

    move-result-object v3

    .line 8
    iget v4, v2, Landroid/graphics/Rect;->left:I

    .line 9
    invoke-virtual {v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData$Builder;->left(I)Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData$Builder;

    iget v4, v2, Landroid/graphics/Rect;->top:I

    .line 10
    invoke-virtual {v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData$Builder;->top(I)Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData$Builder;

    .line 11
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData$Builder;->height(I)Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData$Builder;

    .line 12
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData$Builder;->width(I)Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData$Builder;

    .line 13
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData$Builder;->build()Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;

    move-result-object v2

    .line 14
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zzm()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zzl(Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;F)Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    .line 15
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 16
    invoke-virtual {v1, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 17
    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    move v5, v4

    .line 18
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/impl/data/ActivityMonitorData;->builder()Lcom/google/ads/interactivemedia/v3/impl/data/ActivityMonitorData$Builder;

    move-result-object v6

    .line 19
    invoke-interface {v6, p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ActivityMonitorData$Builder;->queryId(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/ActivityMonitorData$Builder;

    .line 20
    invoke-interface {v6, p2}, Lcom/google/ads/interactivemedia/v3/impl/data/ActivityMonitorData$Builder;->eventId(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/ActivityMonitorData$Builder;

    .line 21
    invoke-interface {v6, p3}, Lcom/google/ads/interactivemedia/v3/impl/data/ActivityMonitorData$Builder;->appState(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/ActivityMonitorData$Builder;

    .line 22
    invoke-interface {v6, v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/data/ActivityMonitorData$Builder;->nativeTime(J)Lcom/google/ads/interactivemedia/v3/impl/data/ActivityMonitorData$Builder;

    .line 23
    invoke-interface {v6, v5}, Lcom/google/ads/interactivemedia/v3/impl/data/ActivityMonitorData$Builder;->nativeViewHidden(Z)Lcom/google/ads/interactivemedia/v3/impl/data/ActivityMonitorData$Builder;

    .line 24
    invoke-interface {v6, v0}, Lcom/google/ads/interactivemedia/v3/impl/data/ActivityMonitorData$Builder;->nativeViewBounds(Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;)Lcom/google/ads/interactivemedia/v3/impl/data/ActivityMonitorData$Builder;

    .line 25
    invoke-interface {v6, v2}, Lcom/google/ads/interactivemedia/v3/impl/data/ActivityMonitorData$Builder;->nativeViewVisibleBounds(Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;)Lcom/google/ads/interactivemedia/v3/impl/data/ActivityMonitorData$Builder;

    .line 26
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-nez p1, :cond_4

    const-wide/16 p1, 0x0

    .line 27
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzts;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    goto :goto_0

    .line 30
    :cond_4
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzub;

    new-instance p3, Lcom/google/ads/interactivemedia/v3/impl/zzg;

    invoke-direct {p3, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzg;-><init>(Landroid/media/AudioManager;)V

    .line 28
    invoke-interface {p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzub;->zzc(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    const-class p3, Ljava/lang/Throwable;

    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/zzd;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzd;

    .line 29
    invoke-static {p1, p3, v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzts;->zze(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/internal/zzpg;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 27
    :goto_0
    new-instance p2, Lcom/google/ads/interactivemedia/v3/impl/zze;

    invoke-direct {p2, v6}, Lcom/google/ads/interactivemedia/v3/impl/zze;-><init>(Lcom/google/ads/interactivemedia/v3/impl/data/ActivityMonitorData$Builder;)V

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzub;

    .line 30
    invoke-static {p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzts;->zzg(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/ads/interactivemedia/v3/internal/zzpg;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method final zza(Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zzf:Z

    return-void
.end method

.method final zzb()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zzf:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zzc:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzdy;->zzc(Landroid/content/Context;)Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/zzc;

    invoke-direct {v1, p0}, Lcom/google/ads/interactivemedia/v3/impl/zzc;-><init>(Lcom/google/ads/interactivemedia/v3/impl/zzh;)V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zzd:Lcom/google/ads/interactivemedia/v3/impl/zzc;

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method final zzc()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zzc:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzdy;->zzc(Landroid/content/Context;)Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zzd:Lcom/google/ads/interactivemedia/v3/impl/zzc;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method public final zzd(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzc()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzb()Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzd()Ljava/lang/String;

    move-result-object p1

    if-nez v0, :cond_0

    .line 4
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x2b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0xd

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Received monitor message: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for session id: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with no data"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzfc;->zzb(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->activate:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    if-eq v1, v2, :cond_1

    return-void

    :cond_1
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;->queryId:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;->eventId:Ljava/lang/String;

    const-string v2, ""

    .line 6
    invoke-direct {p0, v1, v0, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zzn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/zzf;

    invoke-direct {v1, p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzf;-><init>(Lcom/google/ads/interactivemedia/v3/impl/zzh;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzub;

    .line 7
    invoke-static {v0, v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzts;->zzg(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/ads/interactivemedia/v3/internal/zzpg;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method final synthetic zze(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/ActivityMonitorData;)Ljava/lang/Object;
    .locals 6

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->activityMonitor:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->viewability:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;-><init>(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbz;

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbz;->zzj(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method final synthetic zzf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 0
    const-string p1, ""

    invoke-direct {p0, p1, p1, p3}, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zzn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzg()Lcom/google/ads/interactivemedia/v3/impl/zzbz;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbz;

    return-object v0
.end method

.method final synthetic zzh()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method final synthetic zzi()Landroid/app/Activity;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zze:Landroid/app/Activity;

    return-object v0
.end method

.method final synthetic zzj(Landroid/app/Activity;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zze:Landroid/app/Activity;

    return-void
.end method

.method final synthetic zzk()Lcom/google/ads/interactivemedia/v3/internal/zzub;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzh;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzub;

    return-object v0
.end method
