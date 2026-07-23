.class public final Lcom/google/ads/interactivemedia/v3/internal/zzew;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field protected zza:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzew;->zza:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzew;->zza:Ljava/util/ArrayList;

    return-void
.end method

.method private static final zzc(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptNativeBridgeUriComponent;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;Ljava/util/concurrent/ExecutorService;)Lcom/google/ads/interactivemedia/v3/internal/zzev;
    .locals 6

    .line 1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzafy;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzafx;

    move-result-object v4

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 3
    invoke-static {p0, p2, p1, v4, p3}, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zza(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptNativeBridgeUriComponent;Lcom/google/ads/interactivemedia/v3/internal/zzafx;Ljava/util/concurrent/ExecutorService;)Lcom/google/ads/interactivemedia/v3/impl/zzbv;

    move-result-object v3

    .line 4
    sget-object p0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->log:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzfb;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzfb;-><init>()V

    const-string v1, "*"

    invoke-virtual {v3, v1, p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbv;->zzg(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/zzby;)V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzeb;

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 5
    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/zzeb;-><init>(Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptNativeBridgeUriComponent;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;Lcom/google/ads/interactivemedia/v3/impl/zzbv;Lcom/google/ads/interactivemedia/v3/internal/zzafx;Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method private static final zzd(Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptNativeBridgeUriComponent;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;Lcom/google/ads/interactivemedia/v3/internal/zzev;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzev;->zza()Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptNativeBridgeUriComponent;

    move-result-object v0

    .line 2
    invoke-static {v0, p0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzev;->zzb()Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    move-result-object p0

    invoke-static {p0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final zzb(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptNativeBridgeUriComponent;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;Ljava/util/concurrent/ExecutorService;)Lcom/google/ads/interactivemedia/v3/internal/zzev;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzew;->zza:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1, p2, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/zzew;->zzc(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptNativeBridgeUriComponent;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;Ljava/util/concurrent/ExecutorService;)Lcom/google/ads/interactivemedia/v3/internal/zzev;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzew;->zza:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzev;

    .line 4
    invoke-static {p2, p3, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzew;->zzd(Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptNativeBridgeUriComponent;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;Lcom/google/ads/interactivemedia/v3/internal/zzev;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-static {p1, p2, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/zzew;->zzc(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptNativeBridgeUriComponent;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;Ljava/util/concurrent/ExecutorService;)Lcom/google/ads/interactivemedia/v3/internal/zzev;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method
