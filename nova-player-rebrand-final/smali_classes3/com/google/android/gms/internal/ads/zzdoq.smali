.class public final Lcom/google/android/gms/internal/ads/zzdoq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field zza:Lcom/google/android/gms/internal/ads/zzblt;

.field zzb:Lcom/google/android/gms/internal/ads/zzblq;

.field zzc:Lcom/google/android/gms/internal/ads/zzbmg;

.field zzd:Lcom/google/android/gms/internal/ads/zzbmd;

.field zze:Lcom/google/android/gms/internal/ads/zzbrb;

.field final zzf:Landroidx/collection/SimpleArrayMap;

.field final zzg:Landroidx/collection/SimpleArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoq;->zzf:Landroidx/collection/SimpleArrayMap;

    new-instance v0, Landroidx/collection/SimpleArrayMap;

    .line 2
    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoq;->zzg:Landroidx/collection/SimpleArrayMap;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzblt;)Lcom/google/android/gms/internal/ads/zzdoq;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdoq;->zza:Lcom/google/android/gms/internal/ads/zzblt;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzblq;)Lcom/google/android/gms/internal/ads/zzdoq;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdoq;->zzb:Lcom/google/android/gms/internal/ads/zzblq;

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzbmg;)Lcom/google/android/gms/internal/ads/zzdoq;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdoq;->zzc:Lcom/google/android/gms/internal/ads/zzbmg;

    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzbmd;)Lcom/google/android/gms/internal/ads/zzdoq;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdoq;->zzd:Lcom/google/android/gms/internal/ads/zzbmd;

    return-object p0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzbrb;)Lcom/google/android/gms/internal/ads/zzdoq;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdoq;->zze:Lcom/google/android/gms/internal/ads/zzbrb;

    return-object p0
.end method

.method public final zzf(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzblz;Lcom/google/android/gms/internal/ads/zzblw;)Lcom/google/android/gms/internal/ads/zzdoq;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoq;->zzf:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdoq;->zzg:Landroidx/collection/SimpleArrayMap;

    .line 2
    invoke-virtual {p2, p1, p3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzdor;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzdor;-><init>(Lcom/google/android/gms/internal/ads/zzdoq;[B)V

    return-object v0
.end method
