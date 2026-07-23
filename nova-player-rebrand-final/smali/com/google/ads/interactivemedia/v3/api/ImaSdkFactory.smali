.class public Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# static fields
.field private static zza:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

.field private static final zzc:Lcom/google/ads/interactivemedia/v3/internal/zzew;


# instance fields
.field private zzb:I

.field private zzd:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzew;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzew;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzew;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->zzb:I

    return-void
.end method

.method public static createAdDisplayContainer(Landroid/view/ViewGroup;Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;)Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;
    .locals 1

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzi;

    .line 1
    invoke-direct {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzi;-><init>(Landroid/view/ViewGroup;Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;)V

    return-object v0
.end method

.method public static createAudioAdDisplayContainer(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;)Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;
    .locals 1

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzau;

    .line 1
    invoke-direct {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzau;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;)V

    return-object v0
.end method

.method public static createCustomUiOptions()Lcom/google/ads/interactivemedia/v3/api/CustomUiOptions;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/CustomUiOptionsImpl;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/CustomUiOptionsImpl;-><init>()V

    return-object v0
.end method

.method public static createStreamDisplayContainer(Landroid/view/ViewGroup;Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;)Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;
    .locals 1

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzdk;

    .line 1
    invoke-direct {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzdk;-><init>(Landroid/view/ViewGroup;Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;)V

    return-object v0
.end method

.method public static getInstance()Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->zza:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->zza:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    :cond_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->zza:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    return-object v0
.end method

.method private final zzb(Landroid/content/Context;Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Ljava/util/concurrent/ExecutorService;)Lcom/google/ads/interactivemedia/v3/api/AdsLoader;
    .locals 6

    .line 1
    instance-of v0, p3, Lcom/google/ads/interactivemedia/v3/impl/zzbt;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    const-string v0, "Invalid ImaSdkSettings instance. ImaSdkSettings must be constructed through ImaSdkFactory."

    invoke-static {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzpn;->zzb(ZLjava/lang/Object;)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzew;

    .line 3
    invoke-interface {p3}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-interface {p3}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->getTestingConfig()Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    move-result-object v5

    invoke-static {v5}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzh(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v5

    .line 6
    invoke-static {p2, v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptNativeBridgeUriComponent;->create(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzpl;)Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptNativeBridgeUriComponent;

    move-result-object p2

    .line 7
    invoke-interface {p3}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->getTestingConfig()Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    move-result-object v3

    .line 8
    invoke-virtual {v2, p1, p2, v3, p5}, Lcom/google/ads/interactivemedia/v3/internal/zzew;->zzb(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptNativeBridgeUriComponent;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;Ljava/util/concurrent/ExecutorService;)Lcom/google/ads/interactivemedia/v3/internal/zzev;

    move-result-object p2

    new-instance p5, Lcom/google/ads/interactivemedia/v3/internal/zzfa;

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->zzb:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->zzb:I

    .line 9
    invoke-direct {p5, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzfa;-><init>(I)V

    .line 10
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzev;->zzd()Lcom/google/ads/interactivemedia/v3/internal/zzafx;

    move-result-object v2

    invoke-virtual {p5, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzfa;->zzb(Lcom/google/ads/interactivemedia/v3/internal/zzafx;)V

    .line 11
    invoke-static {p2, p1, p3, p4, p5}, Lcom/google/ads/interactivemedia/v3/impl/zzan;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzev;Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Lcom/google/ads/interactivemedia/v3/internal/zzfa;)Lcom/google/ads/interactivemedia/v3/impl/zzan;

    move-result-object p1

    invoke-virtual {p5}, Lcom/google/ads/interactivemedia/v3/internal/zzfa;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzafx;

    move-result-object p2

    .line 12
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzafw;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzafv;

    move-result-object p3

    invoke-virtual {p3, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzafv;->zza(J)Lcom/google/ads/interactivemedia/v3/internal/zzafv;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    invoke-virtual {p3, p4, p5}, Lcom/google/ads/interactivemedia/v3/internal/zzafv;->zzb(J)Lcom/google/ads/interactivemedia/v3/internal/zzafv;

    .line 13
    invoke-virtual {p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzafx;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzafv;)Lcom/google/ads/interactivemedia/v3/internal/zzafx;

    return-object p1
.end method


# virtual methods
.method public createAdsLoader(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;)Lcom/google/ads/interactivemedia/v3/api/AdsLoader;
    .locals 7

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzgc;->zzb(Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 6
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->zza()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    .line 7
    invoke-direct/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->zzb(Landroid/content/Context;Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Ljava/util/concurrent/ExecutorService;)Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    move-result-object p1

    return-object p1
.end method

.method public createAdsLoader(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;)Lcom/google/ads/interactivemedia/v3/api/AdsLoader;
    .locals 7

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzgc;->zzb(Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 9
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->zza()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    .line 10
    invoke-direct/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->zzb(Landroid/content/Context;Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Ljava/util/concurrent/ExecutorService;)Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    move-result-object p1

    return-object p1
.end method

.method public createAdsRenderingSettings()Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/AdsRenderingSettingsImpl;-><init>()V

    return-object v0
.end method

.method public createAdsRequest()Lcom/google/ads/interactivemedia/v3/api/AdsRequest;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;-><init>()V

    return-object v0
.end method

.method public createFriendlyObstruction(Landroid/view/View;Lcom/google/ads/interactivemedia/v3/api/FriendlyObstructionPurpose;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/api/FriendlyObstruction;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/impl/data/FriendlyObstructionImpl;->builder()Lcom/google/ads/interactivemedia/v3/impl/data/FriendlyObstructionImpl$Builder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/data/FriendlyObstructionImpl$Builder;->view(Landroid/view/View;)Lcom/google/ads/interactivemedia/v3/impl/data/FriendlyObstructionImpl$Builder;

    .line 2
    invoke-interface {v0, p2}, Lcom/google/ads/interactivemedia/v3/impl/data/FriendlyObstructionImpl$Builder;->purpose(Lcom/google/ads/interactivemedia/v3/api/FriendlyObstructionPurpose;)Lcom/google/ads/interactivemedia/v3/impl/data/FriendlyObstructionImpl$Builder;

    .line 3
    invoke-interface {v0, p3}, Lcom/google/ads/interactivemedia/v3/impl/data/FriendlyObstructionImpl$Builder;->detailedReason(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/FriendlyObstructionImpl$Builder;

    .line 4
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/FriendlyObstructionImpl$Builder;->build()Lcom/google/ads/interactivemedia/v3/impl/data/FriendlyObstructionImpl;

    move-result-object p1

    return-object p1
.end method

.method public createImaSdkSettings()Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzbt;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbt;-><init>()V

    return-object v0
.end method

.method public createLiveStreamRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/api/StreamRequest;
    .locals 2

    .line 3
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzdm;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzafs;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzafs;

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzdm;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzafs;)V

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzdm;->zzd(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/impl/zzdm;->zzo(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p3}, Lcom/google/ads/interactivemedia/v3/impl/zzdm;->zzg(Ljava/lang/String;)V

    return-object v0
.end method

.method public createVodStreamRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/api/StreamRequest;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzdm;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzafs;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzafs;

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzdm;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzafs;)V

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzdm;->zze(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/impl/zzdm;->zzf(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p3}, Lcom/google/ads/interactivemedia/v3/impl/zzdm;->zzo(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p4}, Lcom/google/ads/interactivemedia/v3/impl/zzdm;->zzg(Ljava/lang/String;)V

    return-object v0
.end method

.method public final zza()Ljava/util/concurrent/ExecutorService;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->zzd:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzul;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzul;-><init>()V

    const-string v1, "imasdk-%d"

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzul;->zza(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzul;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzul;->zzb()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->zzd:Ljava/util/concurrent/ExecutorService;

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->zzd:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
