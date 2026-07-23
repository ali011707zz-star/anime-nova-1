.class public final Lcom/google/android/gms/ads/internal/client/zzex;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# static fields
.field public static final zza:Ljava/util/Set;

.field private static zze:Lcom/google/android/gms/ads/internal/client/zzex;


# instance fields
.field private zzb:Lcom/google/android/gms/ads/internal/client/zzep;

.field private zzc:Lcom/google/android/gms/ads/internal/client/zzfb;

.field private zzd:Lcom/google/android/gms/ads/internal/client/zzeo;

.field private final zzf:Ljava/lang/Object;

.field private final zzg:Ljava/lang/Object;

.field private final zzh:Ljava/util/ArrayList;

.field private zzi:Z

.field private zzj:Z

.field private final zzk:Ljava/lang/Object;

.field private zzl:Lcom/google/android/gms/ads/internal/client/zzdb;

.field private zzn:Lcom/google/android/gms/ads/RequestConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/google/android/gms/ads/AdFormat;

    sget-object v2, Lcom/google/android/gms/ads/AdFormat;->APP_OPEN_AD:Lcom/google/android/gms/ads/AdFormat;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/ads/AdFormat;->INTERSTITIAL:Lcom/google/android/gms/ads/AdFormat;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/ads/AdFormat;->REWARDED:Lcom/google/android/gms/ads/AdFormat;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/gms/ads/internal/client/zzex;->zza:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzf:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzg:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzi:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzj:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzk:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->build()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzn:Lcom/google/android/gms/ads/RequestConfiguration;

    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzh:Ljava/util/ArrayList;

    return-void
.end method

.method private static zzB(Ljava/util/List;)Lcom/google/android/gms/ads/initialization/InitializationStatus;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbqg;

    .line 3
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzbqg;->zza:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbqo;

    .line 4
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzbqg;->zzb:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/google/android/gms/ads/initialization/AdapterStatus$State;->READY:Lcom/google/android/gms/ads/initialization/AdapterStatus$State;

    goto :goto_1

    :cond_0
    sget-object v4, Lcom/google/android/gms/ads/initialization/AdapterStatus$State;->NOT_READY:Lcom/google/android/gms/ads/initialization/AdapterStatus$State;

    :goto_1
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzbqg;->zzd:Ljava/lang/String;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzbqg;->zzc:I

    invoke-direct {v3, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzbqo;-><init>(Lcom/google/android/gms/ads/initialization/AdapterStatus$State;Ljava/lang/String;I)V

    .line 3
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzbqp;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbqp;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method private final zzC(Lcom/google/android/gms/ads/RequestConfiguration;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzl:Lcom/google/android/gms/ads/internal/client/zzdb;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzfv;

    invoke-direct {v1, p1}, Lcom/google/android/gms/ads/internal/client/zzfv;-><init>(Lcom/google/android/gms/ads/RequestConfiguration;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzdb;->zzr(Lcom/google/android/gms/ads/internal/client/zzfv;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Unable to set request configuration parcel."

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final zzD(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzl:Lcom/google/android/gms/ads/internal/client/zzdb;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/client/zzaz;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzau;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/ads/internal/client/zzau;-><init>(Lcom/google/android/gms/ads/internal/client/zzaz;Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/ads/internal/client/zzba;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 4
    check-cast p1, Lcom/google/android/gms/ads/internal/client/zzdb;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzl:Lcom/google/android/gms/ads/internal/client/zzdb;

    :cond_0
    return-void
.end method

.method private final zzE(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzl:Lcom/google/android/gms/ads/internal/client/zzdb;

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/client/zzdb;->zze()V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzl:Lcom/google/android/gms/ads/internal/client/zzdb;

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 3
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/client/zzdb;->zzj(Ljava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "MobileAdsSettingManager initialization failed"

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static zzb()Lcom/google/android/gms/ads/internal/client/zzex;
    .locals 2

    .line 1
    const-class v0, Lcom/google/android/gms/ads/internal/client/zzex;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/ads/internal/client/zzex;->zze:Lcom/google/android/gms/ads/internal/client/zzex;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzex;

    invoke-direct {v1}, Lcom/google/android/gms/ads/internal/client/zzex;-><init>()V

    sput-object v1, Lcom/google/android/gms/ads/internal/client/zzex;->zze:Lcom/google/android/gms/ads/internal/client/zzex;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/google/android/gms/ads/internal/client/zzex;->zze:Lcom/google/android/gms/ads/internal/client/zzex;

    .line 2
    monitor-exit v0

    return-object v1

    .line 3
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic zzv(Ljava/util/List;)Lcom/google/android/gms/ads/initialization/InitializationStatus;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/client/zzex;->zzB(Ljava/util/List;)Lcom/google/android/gms/ads/initialization/InitializationStatus;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zzc(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzf:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzi:Z

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzh:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    .line 2
    :cond_0
    :goto_0
    monitor-exit p2

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzj:Z

    if-eqz v0, :cond_3

    if-eqz p3, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/client/zzex;->zzl()Lcom/google/android/gms/ads/initialization/InitializationStatus;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;->onInitializationComplete(Lcom/google/android/gms/ads/initialization/InitializationStatus;)V

    .line 4
    :cond_2
    monitor-exit p2

    return-void

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzi:Z

    if-eqz p3, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzh:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_4
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_a

    .line 7
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzk:Ljava/lang/Object;

    monitor-enter p2

    const/4 p3, 0x0

    .line 8
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzex;->zzD(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzl:Lcom/google/android/gms/ads/internal/client/zzdb;

    if-eqz v0, :cond_5

    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzew;

    .line 9
    invoke-direct {v1, p0, p3}, Lcom/google/android/gms/ads/internal/client/zzew;-><init>(Lcom/google/android/gms/ads/internal/client/zzex;[B)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzdb;->zzp(Lcom/google/android/gms/internal/ads/zzbqn;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzl:Lcom/google/android/gms/ads/internal/client/zzdb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbtp;

    .line 10
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzbtp;-><init>()V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzdb;->zzo(Lcom/google/android/gms/internal/ads/zzbtt;)V

    goto :goto_1

    :catchall_1
    move-exception p1

    goto/16 :goto_5

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzn:Lcom/google/android/gms/ads/RequestConfiguration;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForChildDirectedTreatment()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzn:Lcom/google/android/gms/ads/RequestConfiguration;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForUnderAgeOfConsent()I

    move-result v0

    if-eq v0, v1, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzn:Lcom/google/android/gms/ads/RequestConfiguration;

    .line 13
    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/client/zzex;->zzC(Lcom/google/android/gms/ads/RequestConfiguration;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    .line 6
    :goto_2
    :try_start_2
    const-string v1, "MobileAdsSettingManager initialization failed"

    .line 14
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    :cond_7
    :goto_3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbhe;->zza(Landroid/content/Context;)V

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjc;->zza:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzmE:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "Initializing on bg thread"

    .line 25
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzd(Ljava/lang/String;)V

    .line 26
    sget-object v0, Lcom/google/android/gms/ads/internal/util/client/zzb;->zza:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzeu;

    invoke-direct {v1, p0, p3}, Lcom/google/android/gms/ads/internal/client/zzeu;-><init>(Lcom/google/android/gms/ads/internal/client/zzex;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_4

    .line 30
    :cond_8
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjc;->zzb:Lcom/google/android/gms/internal/ads/zzbio;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzmE:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 24
    sget-object v0, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzes;

    invoke-direct {v1, p0, p3}, Lcom/google/android/gms/ads/internal/client/zzes;-><init>(Lcom/google/android/gms/ads/internal/client/zzex;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_9
    const-string v0, "Initializing on calling thread"

    .line 22
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzd(Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p3}, Lcom/google/android/gms/ads/internal/client/zzex;->zzE(Ljava/lang/String;)V

    .line 26
    :goto_4
    new-instance p3, Lcom/google/android/gms/ads/internal/client/zzep;

    .line 27
    invoke-direct {p3, p1}, Lcom/google/android/gms/ads/internal/client/zzep;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzb:Lcom/google/android/gms/ads/internal/client/zzep;

    new-instance p3, Lcom/google/android/gms/ads/internal/client/zzfb;

    .line 28
    invoke-direct {p3, p1}, Lcom/google/android/gms/ads/internal/client/zzfb;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzc:Lcom/google/android/gms/ads/internal/client/zzfb;

    new-instance p3, Lcom/google/android/gms/ads/internal/client/zzeo;

    .line 29
    invoke-direct {p3, p1}, Lcom/google/android/gms/ads/internal/client/zzeo;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzd:Lcom/google/android/gms/ads/internal/client/zzeo;

    .line 30
    monitor-exit p2

    return-void

    :goto_5
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 6
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Context cannot be null."

    .line 7
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :goto_6
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final zzd()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzf:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzj:Z

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzi:Z

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzh:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzk:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzl:Lcom/google/android/gms/ads/internal/client/zzdb;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzdb;->zzw()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 2
    :try_start_2
    const-string v2, "Unable to stop the SDK."

    .line 4
    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzl:Lcom/google/android/gms/ads/internal/client/zzdb;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzb:Lcom/google/android/gms/ads/internal/client/zzep;

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/ads/preload/zzb;->zzg()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzb:Lcom/google/android/gms/ads/internal/client/zzep;

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzc:Lcom/google/android/gms/ads/internal/client/zzfb;

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/ads/preload/zzb;->zzg()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzc:Lcom/google/android/gms/ads/internal/client/zzfb;

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzd:Lcom/google/android/gms/ads/internal/client/zzeo;

    if-eqz v2, :cond_3

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/ads/preload/zzb;->zzg()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzd:Lcom/google/android/gms/ads/internal/client/zzeo;

    .line 8
    :cond_3
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public final zzl()Lcom/google/android/gms/ads/initialization/InitializationStatus;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzk:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzl:Lcom/google/android/gms/ads/internal/client/zzdb;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "MobileAds.initialize() must be called prior to getting initialization status."

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzl:Lcom/google/android/gms/ads/internal/client/zzdb;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzet;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/client/zzet;-><init>(Lcom/google/android/gms/ads/internal/client/zzex;)V

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 2
    :cond_1
    :try_start_1
    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/client/zzdb;->zzq()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/client/zzex;->zzB(Ljava/util/List;)Lcom/google/android/gms/ads/initialization/InitializationStatus;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v1

    .line 6
    :catch_0
    const-string v1, "Unable to get Initialization status."

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzet;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/client/zzet;-><init>(Lcom/google/android/gms/ads/internal/client/zzex;)V

    .line 4
    monitor-exit v0

    return-object v1

    .line 6
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final zzp()Lcom/google/android/gms/ads/RequestConfiguration;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzn:Lcom/google/android/gms/ads/RequestConfiguration;

    return-object v0
.end method

.method public final zzs(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzk:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzl:Lcom/google/android/gms/ads/internal/client/zzdb;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "MobileAds.initialize() must be called prior to setting the plugin."

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzl:Lcom/google/android/gms/ads/internal/client/zzdb;

    if-nez v1, :cond_1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 2
    :cond_1
    :try_start_1
    invoke-interface {v1, p1}, Lcom/google/android/gms/ads/internal/client/zzdb;->zzv(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 4
    :try_start_2
    const-string v1, "Unable to set plugin."

    .line 3
    invoke-static {v1, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method final synthetic zzt(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzk:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/client/zzex;->zzE(Ljava/lang/String;)V

    .line 2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final synthetic zzu(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzk:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/client/zzex;->zzE(Ljava/lang/String;)V

    .line 2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final synthetic zzw()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzf:Ljava/lang/Object;

    return-object v0
.end method

.method final synthetic zzx()Ljava/util/ArrayList;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzh:Ljava/util/ArrayList;

    return-object v0
.end method

.method final synthetic zzy(Z)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzi:Z

    return-void
.end method

.method final synthetic zzz(Z)V
    .locals 0

    .line 0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/client/zzex;->zzj:Z

    return-void
.end method
