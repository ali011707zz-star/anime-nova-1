.class public final Lcom/google/android/gms/internal/ads/zzctw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzikg;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzikp;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzikp;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzikp;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctw;->zza:Lcom/google/android/gms/internal/ads/zzikp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzctw;->zzb:Lcom/google/android/gms/internal/ads/zzikp;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzctw;->zzc:Lcom/google/android/gms/internal/ads/zzikp;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)Lcom/google/android/gms/internal/ads/zzctw;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzctw;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzctw;-><init>(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)V

    return-object v0
.end method

.method public static zzd(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzdxz;)Lcom/google/android/gms/internal/ads/zzdeg;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdeg;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdeg;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzdxz;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzdeg;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctw;->zza:Lcom/google/android/gms/internal/ads/zzikp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzikv;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzctw;->zzb:Lcom/google/android/gms/internal/ads/zzikp;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzikv;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/util/Clock;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzctw;->zzc:Lcom/google/android/gms/internal/ads/zzikp;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzikv;->zzb()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdxz;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzctw;->zzd(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzdxz;)Lcom/google/android/gms/internal/ads/zzdeg;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzctw;->zza()Lcom/google/android/gms/internal/ads/zzdeg;

    move-result-object v0

    return-object v0
.end method
