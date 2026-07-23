.class public final Lcom/google/android/gms/internal/ads/zzbbf;
.super Lcom/google/android/gms/internal/ads/zzbby;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zzh:Ljava/util/Map;

.field private final zzi:Landroid/view/View;

.field private final zzj:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbak;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzawg;IILjava/util/Map;Landroid/view/View;Landroid/content/Context;)V
    .locals 7

    .line 1
    const-string v3, "NhSpQvE4PaXaFqOsSIcuQESqMAyvT+VdhFhpwrR61iU="

    const/16 v6, 0x55

    const-string v2, "mWKvHkCTlhia7UFG1tX8rmkp9AizD6H5C2Y+fxk0U+Y2fZze528QNyV6FTMftwOj"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzbby;-><init>(Lcom/google/android/gms/internal/ads/zzbak;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzawg;II)V

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzbbf;->zzh:Ljava/util/Map;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzbbf;->zzi:Landroid/view/View;

    move-object/from16 p1, p9

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbf;->zzj:Landroid/content/Context;

    return-void
.end method

.method private final zzb(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbf;->zzh:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method


# virtual methods
.method protected final zza()V
    .locals 10

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbbf;->zzb(I)J

    move-result-wide v1

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzbbf;->zzb(I)J

    move-result-wide v4

    new-array v6, v3, [J

    const/4 v7, 0x0

    aput-wide v1, v6, v7

    aput-wide v4, v6, v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbf;->zzj:Landroid/content/Context;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbby;->zza:Lcom/google/android/gms/internal/ads/zzbak;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbak;->zzb()Landroid/content/Context;

    move-result-object v1

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbby;->zze:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbbf;->zzi:Landroid/view/View;

    const/4 v5, 0x3

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v6, v8, v7

    aput-object v1, v8, v0

    aput-object v4, v8, v3

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v2, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    .line 4
    aget-wide v6, v1, v7

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbbf;->zzh:Ljava/util/Map;

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aget-wide v8, v1, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    aget-wide v8, v1, v3

    .line 7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aget-wide v3, v1, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbby;->zzd:Lcom/google/android/gms/internal/ads/zzawg;

    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/internal/ads/zzawg;->zzY(J)Lcom/google/android/gms/internal/ads/zzawg;

    .line 10
    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/internal/ads/zzawg;->zzZ(J)Lcom/google/android/gms/internal/ads/zzawg;

    .line 11
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
