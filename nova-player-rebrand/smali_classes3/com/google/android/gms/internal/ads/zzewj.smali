.class public final Lcom/google/android/gms/internal/ads/zzewj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzikg;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzikp;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzikp;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzikp;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzewj;->zza:Lcom/google/android/gms/internal/ads/zzikp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzewj;->zzb:Lcom/google/android/gms/internal/ads/zzikp;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzewj;->zzc:Lcom/google/android/gms/internal/ads/zzikp;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)Lcom/google/android/gms/internal/ads/zzewj;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzewj;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzewj;-><init>(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzewj;->zza:Lcom/google/android/gms/internal/ads/zzikp;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfan;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfan;->zza()Lcom/google/android/gms/internal/ads/zzfal;

    move-result-object v2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzewj;->zzb:Lcom/google/android/gms/internal/ads/zzikp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzikv;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/common/util/Clock;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfmk;->zzc()Lcom/google/android/gms/internal/ads/zzgzy;

    move-result-object v6

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzewj;->zzc:Lcom/google/android/gms/internal/ads/zzikp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzikv;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/gms/internal/ads/zzdxz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzevl;

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbit;->zzg:Lcom/google/android/gms/internal/ads/zzbio;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzevl;-><init>(Lcom/google/android/gms/internal/ads/zzfax;JLcom/google/android/gms/common/util/Clock;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdxz;)V

    return-object v1
.end method
