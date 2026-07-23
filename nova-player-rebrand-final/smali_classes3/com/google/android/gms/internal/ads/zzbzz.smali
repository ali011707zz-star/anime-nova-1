.class final Lcom/google/android/gms/internal/ads/zzbzz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic zza:Landroid/content/Context;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcab;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcab;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbzz;->zza:Landroid/content/Context;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbzz;->zzb:Lcom/google/android/gms/internal/ads/zzcab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzz;->zzb:Lcom/google/android/gms/internal/ads/zzcab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcab;->zzb()Ljava/util/WeakHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbzz;->zza:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcaa;

    if-eqz v1, :cond_1

    .line 2
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbit;->zzd:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zzcaa;->zza:J

    add-long/2addr v5, v3

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v3, v5, v3

    if-gez v3, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzcaa;->zzb:Lcom/google/android/gms/internal/ads/zzbzy;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbzx;

    .line 5
    invoke-direct {v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzbzx;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbzy;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbzx;->zza()Lcom/google/android/gms/internal/ads/zzbzy;

    move-result-object v1

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbzx;

    .line 4
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzbzx;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbzx;->zza()Lcom/google/android/gms/internal/ads/zzbzy;

    move-result-object v1

    :goto_1
    new-instance v3, Lcom/google/android/gms/internal/ads/zzcaa;

    .line 6
    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzcaa;-><init>(Lcom/google/android/gms/internal/ads/zzcab;Lcom/google/android/gms/internal/ads/zzbzy;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcab;->zzb()Ljava/util/WeakHashMap;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method
