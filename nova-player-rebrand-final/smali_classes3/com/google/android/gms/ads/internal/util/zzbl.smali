.class public final Lcom/google/android/gms/ads/internal/util/zzbl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field private static zza:Lcom/google/android/gms/internal/ads/zzasb;

.field private static final zzb:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/util/zzbl;->zzb:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzbl;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/ads/internal/util/zzbl;->zza:Lcom/google/android/gms/internal/ads/zzasb;

    if-nez v1, :cond_2

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbhe;->zza(Landroid/content/Context;)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->isPackageSide()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhe;->zzfp:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzay;->zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzasb;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 5
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzatd;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzasm;)Lcom/google/android/gms/internal/ads/zzasb;

    move-result-object p1

    .line 6
    :goto_0
    sput-object p1, Lcom/google/android/gms/ads/internal/util/zzbl;->zza:Lcom/google/android/gms/internal/ads/zzasb;

    .line 7
    :cond_2
    monitor-exit v0

    return-void

    .line 8
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcen;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcen;-><init>()V

    sget-object v1, Lcom/google/android/gms/ads/internal/util/zzbl;->zza:Lcom/google/android/gms/internal/ads/zzasb;

    new-instance v2, Lcom/google/android/gms/ads/internal/util/zzbk;

    const/4 v3, 0x0

    .line 3
    invoke-direct {v2, p1, v3, v0}, Lcom/google/android/gms/ads/internal/util/zzbk;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzcen;)V

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzasb;->zzb(Lcom/google/android/gms/internal/ads/zzary;)Lcom/google/android/gms/internal/ads/zzary;

    return-object v0
.end method

.method public final zzb(ILjava/lang/String;Ljava/util/Map;[B)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 10

    .line 1
    new-instance v5, Lcom/google/android/gms/ads/internal/util/zzbi;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Lcom/google/android/gms/ads/internal/util/zzbi;-><init>([B)V

    new-instance v6, Lcom/google/android/gms/ads/internal/util/zzbg;

    .line 2
    invoke-direct {v6, p0, p2, v5}, Lcom/google/android/gms/ads/internal/util/zzbg;-><init>(Lcom/google/android/gms/ads/internal/util/zzbl;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/zzbi;)V

    .line 3
    new-instance v9, Lcom/google/android/gms/ads/internal/util/client/zzl;

    invoke-direct {v9, v0}, Lcom/google/android/gms/ads/internal/util/client/zzl;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/ads/internal/util/zzbh;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v8, p3

    move-object v7, p4

    .line 4
    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/ads/internal/util/zzbh;-><init>(Lcom/google/android/gms/ads/internal/util/zzbl;ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzasd;Lcom/google/android/gms/internal/ads/zzasc;[BLjava/util/Map;Lcom/google/android/gms/ads/internal/util/client/zzl;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/client/zzl;->zzj()Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_0
    const-string p1, "GET"

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzary;->zzm()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzary;->zzn()[B

    move-result-object p3

    invoke-virtual {v9, v4, p1, p2, p3}, Lcom/google/android/gms/ads/internal/util/client/zzl;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzarg; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    .line 6
    :cond_0
    :goto_0
    sget-object p1, Lcom/google/android/gms/ads/internal/util/zzbl;->zza:Lcom/google/android/gms/internal/ads/zzasb;

    .line 9
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzasb;->zzb(Lcom/google/android/gms/internal/ads/zzary;)Lcom/google/android/gms/internal/ads/zzary;

    return-object v5
.end method
